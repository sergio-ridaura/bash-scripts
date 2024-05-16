#!/bin/bash

SCRIPT_NAME="network_info"
SCRIPT_DESCRIPTION="Information about the networks used by the computer."
SCRIPT_DESCRIPTION_ES="Información sobre las redes utilizadas por la computadora."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/fdisk-command-in-linux/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  ifconfig
fi
