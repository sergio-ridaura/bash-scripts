#!/bin/bash

SCRIPT_NAME="ubuntu_name"
SCRIPT_DESCRIPTION="Computer name."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://phoenixnap.com/kb/linux-hostname-command"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_O" != true ]; then
  hostname
fi
