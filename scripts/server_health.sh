#!/bin/bash

# URL to check
URL="http://localhost"

# Make an HTTP request and get the status code
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

# Check if the status code is in the range 200-299
if [[ "$STATUS_CODE" -ge 200 && "$STATUS_CODE" -lt 300 ]]; then
  echo "Server is healthy. Status code: $STATUS_CODE"
  exit 0
else
  echo "Server is not healthy. Status code: $STATUS_CODE"
  exit 1
fi

