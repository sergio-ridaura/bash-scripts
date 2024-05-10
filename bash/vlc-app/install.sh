#!/bin/bash

SCRIPT_NAME="vlc-app_install"
SCRIPT_DESCRIPTION="VLC application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES vlc
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
