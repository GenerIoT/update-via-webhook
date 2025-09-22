# Ruuvi Update Script

This repository contains scripts for updating RuuviTag on host using webhook.

## Requirements

- [webhookd](https://github.com/ncarlier/webhookd/tree/master) must be installed.

## Installation

Clone this repository into your `scripts` directory on the host that has connection to your RuuviTag:

```sh
git clone git@github.com:GenerIoT/update-via-webhook.git ~/scripts
```

## Usage

Make sure Webhook is running in the host.
Update RuuviTag from docker container with the script:

```sh
./ruuvi-update.sh
```