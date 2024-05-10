#!/bin/bash

SCRIPT_NAME="vlc-app_uninstall"
SCRIPT_DESCRIPTION="VLC application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge vlc
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v vlc &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "VLC"
  fi
fi
