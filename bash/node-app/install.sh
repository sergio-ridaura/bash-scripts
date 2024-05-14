#!/bin/bash

SCRIPT_NAME="node-app_install"
SCRIPT_DESCRIPTION="Node.js installation."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://nodejs.org/en/download"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# install
if [ "$ARG_BASH_O" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt install $ARG_YES nodejs &>/dev/null
    source "$SCRIPTS_PATH/npm/install.sh" &>/dev/null
    source "$SCRIPTS_PATH/npm/update.sh" &>/dev/null
  else
    $IS_ROOT apt install $ARG_YES nodejs
    source "$SCRIPTS_PATH/npm/install.sh"
    source "$SCRIPTS_PATH/npm/update.sh"
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "install Node.js"
  fi
fi
