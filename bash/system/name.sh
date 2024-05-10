#!/bin/bash

SCRIPT_NAME="system_name"
SCRIPT_DESCRIPTION="Computer name."
SCRIPT_DESCRIPTION_ES="Nombre de la computadora."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://phoenixnap.com/kb/linux-hostname-command"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  hostname
fi
