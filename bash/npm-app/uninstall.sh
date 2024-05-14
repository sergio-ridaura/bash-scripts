#!/bin/bash

SCRIPT_NAME="npm-app_uninstall"
SCRIPT_DESCRIPTION="Npm application uninstallation."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://docs.npmjs.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_O" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge npm &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge npm
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Npm"
  fi
fi
