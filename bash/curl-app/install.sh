#!/bin/bash

SCRIPT_NAME="curl-app_install"
SCRIPT_DESCRIPTION="cURL application installation."
SCRIPT_DESCRIPTION_ES="nstalación de la aplicación cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES curl
}

# install
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "install cURL"
  fi
fi
