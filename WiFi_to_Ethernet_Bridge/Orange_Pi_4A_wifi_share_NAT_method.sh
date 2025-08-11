#!/bin/bash
WIFI_IF="wlan0"   # Wi-Fi interface
ETH_IF="eth0"     # Ethernet interface
ETH_IP="192.168.50.1"  # Different range from Wi-Fi

# Set static IP for Ethernet
sudo ip addr flush dev $ETH_IF
sudo ip addr add $ETH_IP/24 dev $ETH_IF
sudo ip link set $ETH_IF up

# Configure dnsmasq for DHCP + DNS
sudo systemctl stop dnsmasq
echo "
interface=$ETH_IF
dhcp-range=192.168.50.50,192.168.50.150,12h
dhcp-option=6,8.8.8.8,8.8.4.4
" | sudo tee /etc/dnsmasq.d/wifi_eth_bridge.conf
sudo systemctl start dnsmasq

# Enable IP forwarding
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward
sudo sed -i 's/^#*net.ipv4.ip_forward.*/net.ipv4.ip_forward=1/' /etc/sysctl.conf

# NAT internet from Wi-Fi to Ethernet
sudo iptables -t nat -F
sudo iptables -F
sudo iptables -t nat -A POSTROUTING -o $WIFI_IF -j MASQUERADE
sudo iptables -A FORWARD -i $WIFI_IF -o $ETH_IF -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i $ETH_IF -o $WIFI_IF -j ACCEPT

echo "✅ Wi-Fi ($WIFI_IF) → Ethernet ($ETH_IF) internet sharing ready"
