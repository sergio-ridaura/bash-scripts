#!/bin/bash

SCRIPT_NAME="blender-app_help"
SCRIPT_DESCRIPTION="Blender help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Blender."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v blender &>/dev/null; then
    blender --help
  else
    ERROR_NOT_FOUND "Blender"
  fi
fi
