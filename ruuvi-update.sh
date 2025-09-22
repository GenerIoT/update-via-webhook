#!/bin/bash
# DO NOT EDIT
MAC="$(cat /usr/share/mender/identity/mac)"
ID="$(cat /usr/share/mender/identity/ruuvi-id)"

# EDIT NEXT LINE AS NEEDED
URL="https://github.com/ruuvi/ruuvi.firmware.c/releases/download/v3.30.2/ruuvitag_b_armgcc_ruuvifw_default_v3.30.2_dfu_app.zip"

curl -H "X-Hook-Timeout: 600" "http://localhost:8080/update?url=$URL&mac=$MAC&id=$ID"