#!/bin/bash

SCRIPT_NAME="blender-app_uninstall"
SCRIPT_DESCRIPTION="Blender application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Blender."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge blender
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v blender &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Blender"
  fi
fi
