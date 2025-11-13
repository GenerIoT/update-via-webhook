#!/bin/bash
URL="$1"
MAC="$(cat /usr/share/mender/identity/mac)"
ID="$(cat /usr/share/mender/identity/ruuvi-id)"

curl -H "X-Hook-Timeout: 600" "http://localhost:8080/update?url=$URL&mac=$MAC&id=$ID"