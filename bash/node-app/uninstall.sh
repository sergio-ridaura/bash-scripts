#!/bin/bash

SCRIPT_NAME="node-app_uninstall"
SCRIPT_DESCRIPTION="Node.js application uninstallation."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://nodejs.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_O" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge node &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge node
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Node.js"
  fi
fi
