#!/bin/bash

SCRIPT_NAME="diodon-app_install"
SCRIPT_DESCRIPTION="Diodon application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Diodon."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES diodon
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "install Diodon"
  fi
fi
