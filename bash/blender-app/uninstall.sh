#!/bin/bash

SCRIPT_NAME="blender-app_uninstall"
SCRIPT_DESCRIPTION="Blender application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Blender."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge blender &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge blender
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Blender"
  fi
fi
