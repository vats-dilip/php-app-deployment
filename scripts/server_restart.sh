#!/bin/bash

# Function to restart Apache (httpd) service
restart_httpd_service() {
  echo "Restarting Apache (httpd) service..."
  sudo systemctl restart httpd

  # Check if the restart was successful
  if systemctl is-active --quiet httpd; then
    echo "Apache (httpd) service restarted successfully."
  else
    echo "Failed to restart Apache (httpd) service."
  fi
}

# Run the restart function
restart_httpd_service

