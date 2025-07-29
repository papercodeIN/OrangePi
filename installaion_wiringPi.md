# Step-by-Step Guide to Install Wiring Pi & Run Python Script on Orange Pi

### **Step 1: Install Wiring Pi**

1. **Download the Installation Script**  
   Run the following command to download the Wiring Pi installation script:  
   ```bash
   wget https://raw.githubusercontent.com/papercodeIN/Embedded_Devices/refs/heads/main/Orange%20Pi/install_wiringpi.sh
   ```

2. **Make the Script Executable**  
   Change the permissions of the script to make it executable:  
   ```bash
   chmod +x install_wiringpi.sh
   ```

3. **Run the Installation Script**  
   Execute the installation script to install Wiring Pi:  
   ```bash
   bash install_wiringpi.sh
   ```

---

### **Step 2: Run the Python Script (LED Blink Example)**

1. **Download the Python Script**  
   Use the following command to download the sample Python script that blinks an LED:  
   ```bash
   wget https://raw.githubusercontent.com/papercodeIN/Embedded_Devices/refs/heads/main/Orange%20Pi/led_blink.py
   ```

2. **Run the Python Script**  
   Once the script is downloaded, run it using Python 3:  
   ```bash
   python3 led_blink.py
   ```

   This will make an LED connected to the Orange Pi's GPIO blink on and off.

---

By following these steps, you will have successfully installed Wiring Pi and run the LED blink script on your Orange Pi. Enjoy experimenting with GPIO! 😊
