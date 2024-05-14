#!/bin/bash

SCRIPT_NAME="network_info"
SCRIPT_DESCRIPTION="Information about the networks used by the computer."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/fdisk-command-in-linux/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  ifconfig
fi
