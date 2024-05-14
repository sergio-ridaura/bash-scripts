#!/bin/bash

SCRIPT_NAME="network_device_list"
SCRIPT_DESCRIPTION="Shows the devices connected to the network that I am in."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/fdisk-command-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# list
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT nmap -sn 192.168.1.0/24
fi
