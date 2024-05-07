#!/bin/bash

SCRIPT_NAME="blender-app_path"
SCRIPT_DESCRIPTION="Get Blender application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Blender."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_I" != true ]; then
  if command -v blender &>/dev/null; then
    which blender
  else
    ERROR_NOT_FOUND Blender
  fi
fi
