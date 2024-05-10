#!/bin/bash

SCRIPT_NAME="wget-app_install"
SCRIPT_DESCRIPTION="Wget application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES wget
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "install Wget"
  fi
fi
