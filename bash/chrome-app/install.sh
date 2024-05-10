#!/bin/bash

SCRIPT_NAME="chrome-app_install"
SCRIPT_DESCRIPTION="Google Chrome application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES wget
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  $IS_ROOT dpkg -i google-chrome-stable_current_amd64.deb
  $IS_ROOT apt-get $ARG_YES install -f
  rm google-chrome-stable_current_amd64.deb
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
