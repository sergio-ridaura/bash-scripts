#!/bin/bash

SCRIPT_NAME="curl-app_uninstall"
SCRIPT_DESCRIPTION="cURL application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge curl &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge curl
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall cURL"
  fi
fi
