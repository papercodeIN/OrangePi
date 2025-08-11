#!/bin/bash
WIFI_IF="wlan0"   # Wi-Fi interface
ETH_IF="eth0"     # Ethernet interface

# Restore Ethernet interface to DHCP
sudo ip addr flush dev $ETH_IF
sudo ip link set $ETH_IF down
sudo dhclient -r $ETH_IF  # Release any DHCP lease
sudo dhclient $ETH_IF     # Request new DHCP address (optional)

# Remove dnsmasq config and stop service
sudo systemctl stop dnsmasq
sudo rm -f /etc/dnsmasq.d/wifi_eth_bridge.conf
sudo systemctl disable dnsmasq  # Only disable if you don't need dnsmasq for other purposes

# Flush all NAT and firewall rules
sudo iptables -t nat -F
sudo iptables -F

# Disable IP forwarding
echo 0 | sudo tee /proc/sys/net/ipv4/ip_forward
sudo sed -i 's/^net.ipv4.ip_forward=1/#net.ipv4.ip_forward=1/' /etc/sysctl.conf

# Optional: Restart network services
sudo systemctl restart networking  # On Debian/Ubuntu
# OR
sudo systemctl restart NetworkManager  # If using NetworkManager

echo "✅ Reverted all changes - Ethernet ($ETH_IF) is now back to normal"