#!/bin/bash

# Check if Apache (httpd) is installed
if ! [ -x "$(command -v httpd)" ]; then
  echo "Apache (httpd) is not installed. Installing..."
  sudo yum update -y
  sudo yum install -y httpd
fi

# Start Apache server
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Check Apache status
sudo systemctl status httpd

