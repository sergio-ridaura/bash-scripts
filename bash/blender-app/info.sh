#!/bin/bash

SCRIPT_NAME="blender-app_info"
SCRIPT_DESCRIPTION="Blender info command."
SCRIPT_DESCRIPTION_ES="Comando de información de Blender."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_I" != true ]; then
  if command -v blender &>/dev/null; then
    info blender
  else
    ERROR_NOT_FOUND Blender
  fi
fi
