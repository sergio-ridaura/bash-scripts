#!/bin/bash

SCRIPT_NAME="vlc-app_help"
SCRIPT_DESCRIPTION="VLC help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v vlc &>/dev/null; then
    vlc --help
  else
    ERROR_NOT_FOUND "VLC"
  fi
fi
