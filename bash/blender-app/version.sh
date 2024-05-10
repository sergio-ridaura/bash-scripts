#!/bin/bash

SCRIPT_NAME="blender-app_version"
SCRIPT_DESCRIPTION="Get Blender application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Blender."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v blender &>/dev/null; then
    if [ "${ARG_BASH_S}" == true ]; then
      echo $(blender --version 2>&1 | grep -oP 'Blender \K\d+\.\d+\.\d+')
    else
      blender --version
    fi
  else
    ERROR_NOT_FOUND "Blender"
  fi
fi
