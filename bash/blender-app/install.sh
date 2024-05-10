#!/bin/bash

SCRIPT_NAME="blender-app_install"
SCRIPT_DESCRIPTION="Blender application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Blender."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.blender.org/download/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES blender
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
