#!/bin/bash

SCRIPT_NAME="vlc-app_info"
SCRIPT_DESCRIPTION="VLC info command."
SCRIPT_DESCRIPTION_ES="Comando de información de VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v vlc &>/dev/null; then
    info vlc
  else
    ERROR_NOT_FOUND "VLC"
  fi
fi
