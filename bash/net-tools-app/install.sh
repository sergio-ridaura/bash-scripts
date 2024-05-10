#!/bin/bash

SCRIPT_NAME="net-tools-app_install"
SCRIPT_DESCRIPTION="Net-tools application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES net-tools
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
