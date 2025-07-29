# Orange Pi SBC Setup Guide  

---

### Default Login Credentials
**Username and Password options:**  
- **Username:** `orangepi`
- **Password:** `orangepi`

OR  

- **Username:** `root`
- **Password:** `orangepi`

---

### SSH Access
To connect to the Orange Pi device over SSH, use the following commands:  

```bash
ssh root@<device-ip>
ssh orangepi@<device-ip>
```
Example:
```bash
ssh root@192.168.1.15
ssh orangepi@192.168.1.15
```

---

### Connect to Wi-Fi
To list available Wi-Fi networks:  

```bash
nmcli dev wifi list
```
Connect to a specific Wi-Fi network using:  

```bash
sudo nmcli --ask dev wifi connect <network-ssid>
```
Example:
```bash
nmcli --ask dev wifi connect Capgemini_4G
```

---

### View GPIO Pin Mapping
To see the GPIO pinout configuration on Orange Pi models, use the following command:  

```bash
gpio readall
```

---

### List Available Storage Devices
To list all block storage devices connected to the Orange Pi:  

```bash
lsblk
```

---

### Clear SSH Entries (Windows)
To clear previous SSH entries on a Windows machine, run this command in the Command Prompt:  

```cmd
echo. > %userprofile%\.ssh\known_hosts
```

---

### Install Node-RED
To install Node-RED on the Orange Pi, use the following command:  

```bash
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
```
This command will install Node-RED along with the necessary Node.js components.

---

## **Orange Pi YouTube Playlist Links**

- **Orange Pi Zero 3:** [YouTube Playlist](https://www.youtube.com/playlist?list=PLxrSjjYyzaaI_eIo1gmEp6e2QRkiUqdk3)  
- **Orange Pi 4A:** [YouTube Playlist](https://www.youtube.com/playlist?list=PLxrSjjYyzaaKhG8dJjDUM0EYC39efBKAw)
- **Orange Pi Zero 2W:** [YouTube Playlist](https://www.youtube.com/playlist?list=PLxrSjjYyzaaKiJdWCMHRrSrB644BnoZ5I)
- **Orange Pi RV2:** [YouTube Playlist](https://www.youtube.com/playlist?list=PLxrSjjYyzaaK0ubjjqmDJ1Tk7ReVBwgMj)
- **Orange Pi 5 Plus:** [YouTube Playlist](https://www.youtube.com/playlist?list=PLxrSjjYyzaaKqywZO8YE5wo7mHz5TYeUJ)

---

# Orange Pi Zero 3
```
root@orangepizero3:~# gpio readall
 +------+-----+----------+--------+---+   H616   +---+--------+----------+-----+------+
 | GPIO | wPi |   Name   |  Mode  | V | Physical | V |  Mode  | Name     | wPi | GPIO |
 +------+-----+----------+--------+---+----++----+---+--------+----------+-----+------+
 |      |     |     3.3V |        |   |  1 || 2  |   |        | 5V       |     |      |
 |  229 |   0 |    SDA.3 |    OFF | 0 |  3 || 4  |   |        | 5V       |     |      |
 |  228 |   1 |    SCL.3 |    OFF | 0 |  5 || 6  |   |        | GND      |     |      |
 |   73 |   2 |      PC9 |    OUT | 0 |  7 || 8  | 0 | OFF    | TXD.5    | 3   | 226  |
 |      |     |      GND |        |   |  9 || 10 | 0 | OFF    | RXD.5    | 4   | 227  |
 |   70 |   5 |      PC6 |   ALT5 | 0 | 11 || 12 | 0 | OFF    | PC11     | 6   | 75   |
 |   69 |   7 |      PC5 |   ALT5 | 0 | 13 || 14 |   |        | GND      |     |      |
 |   72 |   8 |      PC8 |    OFF | 0 | 15 || 16 | 0 | OFF    | PC15     | 9   | 79   |
 |      |     |     3.3V |        |   | 17 || 18 | 0 | OFF    | PC14     | 10  | 78   |
 |  231 |  11 |   MOSI.1 |    OFF | 0 | 19 || 20 |   |        | GND      |     |      |
 |  232 |  12 |   MISO.1 |    OFF | 0 | 21 || 22 | 0 | OFF    | PC7      | 13  | 71   |
 |  230 |  14 |   SCLK.1 |    OFF | 0 | 23 || 24 | 0 | OFF    | CE.1     | 15  | 233  |
 |      |     |      GND |        |   | 25 || 26 | 0 | OFF    | PC10     | 16  | 74   |
 |   65 |  17 |      PC1 |    OFF | 0 | 27 || 28 | 0 | ALT2   | PWM3     | 21  | 224  |
 |  272 |  18 |     PI16 |   ALT2 | 0 | 29 || 30 | 0 | ALT2   | PWM4     | 22  | 225  |
 |  262 |  19 |      PI6 |    OFF | 0 | 31 || 32 |   |        |          |     |      |
 |  234 |  20 |     PH10 |   ALT3 | 0 | 33 || 34 |   |        |          |     |      |
 +------+-----+----------+--------+---+----++----+---+--------+----------+-----+------+
 | GPIO | wPi |   Name   |  Mode  | V | Physical | V |  Mode  | Name     | wPi | GPIO |
 +------+-----+----------+--------+---+   H616   +---+--------+----------+-----+------+
```
---
# Orange Pi 4A
```
root@orangepi4a:~# gpio readall
 +------+-----+----------+--------+---+  OPI 4A  +---+--------+----------+-----+------+
 | GPIO | wPi |   Name   |  Mode  | V | Physical | V |  Mode  | Name     | wPi | GPIO |
 +------+-----+----------+--------+---+----++----+---+--------+----------+-----+------+
 |      |     |     3.3V |        |   |  1 || 2  |   |        | 5V       |     |      |
 |  257 |   0 |    SDA.4 |    OFF | 0 |  3 || 4  |   |        | 5V       |     |      |
 |  256 |   1 |    SCL.4 |    OFF | 0 |  5 || 6  |   |        | GND      |     |      |
 |   36 |   2 |     PWM8 |    OUT | 0 |  7 || 8  | 0 | OFF    | TXD.7    | 3   | 45   |
 |      |     |      GND |        |   |  9 || 10 | 0 | OFF    | RXD.7    | 4   | 46   |
 |   32 |   5 |    TXD.2 |    OFF | 0 | 11 || 12 | 0 | OFF    | PB05     | 6   | 37   |
 |   33 |   7 |    RXD.2 |    OFF | 0 | 13 || 14 |   |        | GND      |     |      |
 |   34 |   8 |     PB02 |    OFF | 0 | 15 || 16 | 0 | OFF    | PI13     | 9   | 269  |
 |      |     |     3.3V |        |   | 17 || 18 | 0 | OFF    | PI14     | 10  | 270  |
 |  260 |  11 |   MOSI.1 |    OFF | 0 | 19 || 20 |   |        | GND      |     |      |
 |  261 |  12 |   MISO.1 |    OFF | 0 | 21 || 22 | 0 | OFF    | TXD.6    | 13  | 262  |
 |  259 |  14 |   SCLK.1 |    OFF | 0 | 23 || 24 | 0 | OFF    | CE.1     | 15  | 258  |
 |      |     |      GND |        |   | 25 || 26 | 0 | OFF    | RXD.6    | 16  | 263  |
 |  265 |  17 |    SDA.5 |    OFF | 0 | 27 || 28 | 0 | OFF    | SCL.5    | 18  | 264  |
 |   35 |  19 |     PB03 |    OFF | 0 | 29 || 30 |   |        | GND      |     |      |
 |   43 |  20 |     PB11 |    OFF | 0 | 31 || 32 | 0 | OFF    | PWM12    | 21  | 267  |
 |  268 |  22 |    PWM13 |    OFF | 0 | 33 || 34 |   |        | GND      |     |      |
 |   38 |  23 |     PB06 |    OFF | 0 | 35 || 36 | 0 | OFF    | PI10     | 24  | 266  |
 |   44 |  25 |     PB12 |    OFF | 0 | 37 || 38 | 0 | OFF    | PB07     | 26  | 39   |
 |      |     |      GND |        |   | 39 || 40 | 0 | OFF    | PB08     | 27  | 40   |
 +------+-----+----------+--------+---+----++----+---+--------+----------+-----+------+
 | GPIO | wPi |   Name   |  Mode  | V | Physical | V |  Mode  | Name     | wPi | GPIO |
 +------+-----+----------+--------+---+  OPI 4A  +---+--------+----------+-----+------+
```
