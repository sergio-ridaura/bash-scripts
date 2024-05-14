#!/bin/bash

SCRIPT_NAME="root_sudo"
SCRIPT_DESCRIPTION="If you are root, use sudo."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="http://gnu.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# sudo
if [ "$ARG_BASH_H" != true ]; then
  if [[ "$(whoami)" != "root" && "$EUID" -ne 0 ]]; then
    echo "sudo"
  fi
fi
