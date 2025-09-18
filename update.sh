#!/bin/bash

echo "Ruuvi update started:"
echo "ID: ${id}"
echo "MAC: ${mac}"
echo "URL: ${url}"

# Get current timestamp in milliseconds
DATE=$(date +%s%3N)

# Set output filename with millisecond timestamp
FIRMWARE_FILE="ruuvitag_firmware_${DATE}.zip"

echo "Downloading firmware from ${url}..."
wget "$url" -O "$FIRMWARE_FILE"

python3 /home/raspi/ota-dfu-python/dfu.py --address="$MAC" --zip="$FIRMWARE_FILE" --ruuvitag="$ID"
return_code=$?

rm -f "$FIRMWARE_FILE"

exit $return_code