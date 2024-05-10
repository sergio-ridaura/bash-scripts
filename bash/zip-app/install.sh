#!/bin/bash

SCRIPT_NAME="zip-app_install"
SCRIPT_DESCRIPTION="Zip application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Zip."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES zip
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
