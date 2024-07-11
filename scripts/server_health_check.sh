#!/bin/bash

# Function to check if the Apache (httpd) service is active
check_httpd_service() {
  if systemctl is-active --quiet httpd; then
    echo "Apache (httpd) service is running."
  else
    echo "Apache (httpd) service is not running."
  fi
}

# Function to check if Apache is serving content on port 80
check_httpd_response() {
  HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost)

  if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "Apache is serving content (HTTP 200 OK)."
  else
    echo "Apache is not serving content (HTTP status: $HTTP_STATUS)."
  fi
}

