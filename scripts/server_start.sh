#!/bin/bash

# Check if Apache is installed
if ! [ -x "$(command -v apache2)" ]; then
  echo "Apache2 is not installed. Installing..."
  sudo apt update
  sudo apt install -y apache2
fi

# Start Apache server
sudo systemctl start apache2

# Enable Apache to start on boot
sudo systemctl enable apache2

