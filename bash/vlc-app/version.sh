#!/bin/bash

SCRIPT_NAME="vlc-app_version"
SCRIPT_DESCRIPTION="Get VLC application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  vlc --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v vlc &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "VLC"
  fi
fi
