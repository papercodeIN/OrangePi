import wiringpi
from wiringpi import GPIO
import time

# Initialize WiringPi
if wiringpi.wiringPiSetup() == -1:
    print("WiringPi setup failed!")
    exit(1)

# Set GPIO pin 2 as OUTPUT
pin = 2
wiringpi.pinMode(pin, GPIO.OUTPUT)

print("Blinking LED on GPIO pin 2...")

try:
    while True:
        # Turn LED ON
        wiringpi.digitalWrite(pin, GPIO.HIGH)
        time.sleep(0.5)  # Wait for 0.5 seconds

        # Turn LED OFF
        wiringpi.digitalWrite(pin, GPIO.LOW)
        time.sleep(0.5)  # Wait for 0.5 seconds
except KeyboardInterrupt:
    # Graceful exit on Ctrl+C
    print("\nExiting program.")
    wiringpi.digitalWrite(pin, GPIO.LOW)  # Ensure LED is OFF before exiting
