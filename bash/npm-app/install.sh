#!/bin/bash

SCRIPT_NAME="npm-app_install"
SCRIPT_DESCRIPTION="Npm application installation."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://docs.npmjs.com/downloading-and-installing-node-js-and-npm"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# install
if [ "$ARG_BASH_O" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt install $ARG_YES npm &>/dev/null
  else
    $IS_ROOT apt install $ARG_YES npm
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "install Npm"
  fi
fi
