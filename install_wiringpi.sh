#!/bin/bash

# Update the package lists
echo "Updating package lists..."
sudo apt-get update

# Install necessary packages
echo "Installing required packages..."
sudo apt-get -y install git swig python3-dev python3-setuptools

# Clone the WiringOP-Python repository
echo "Cloning WiringOP-Python repository..."
git clone --recursive https://github.com/orangepi-xunlong/wiringOP-Python -b next

# Navigate to the WiringOP-Python directory
cd wiringOP-Python

# Update submodules
echo "Updating submodules..."
git submodule update --init --remote

# Generate bindings
echo "Generating bindings..."
python3 generate-bindings.py > bindings.i

# Install WiringOP-Python
echo "Installing WiringOP-Python..."
sudo python3 setup.py install

# Go back to the parent directory
cd ..

# Delete the WiringOP-Python folder
echo "Deleting the WiringOP-Python folder..."
rm -rf wiringOP-Python

# Return to the root directory
echo "Returning to the root directory..."
cd /root

echo "WiringPi installation completed successfully."
