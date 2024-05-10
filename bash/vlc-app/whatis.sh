#!/bin/bash

SCRIPT_NAME="vlc-app_watis"
SCRIPT_DESCRIPTION="Get description of the VLC application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then

  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "VLC es un reproductor multimedia multiplataforma de código abierto. El nombre completo de VLC es VLC media player y está desarrollado por la organización sin fines de lucro VideoLAN".
  else
    echo "VLC is an open source, cross-platform media player. The full name of VLC is VLC media player and it is developed by the non-profit organization VideoLAN."
  fi
fi
