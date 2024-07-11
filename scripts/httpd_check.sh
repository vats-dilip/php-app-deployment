#!/bin/bash

# Check if Apache (httpd) is installed
if ! [ -x "$(command -v httpd)" ]; then
  echo "Apache (httpd) is not installed. Installing..."
  sudo yum update -y
  sudo yum install httpd -y
fi
