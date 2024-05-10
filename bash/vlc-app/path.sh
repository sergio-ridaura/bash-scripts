#!/bin/bash

SCRIPT_NAME="vlc-app_path"
SCRIPT_DESCRIPTION="Get VLC application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v vlc &>/dev/null; then
    which vlc
  else
    ERROR_NOT_FOUND "VLC"
  fi
fi
