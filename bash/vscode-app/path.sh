#!/bin/bash

SCRIPT_NAME="vscode-app_path"
SCRIPT_DESCRIPTION="Get Visual Studio Code application path."
SCRIPT_DESCRIPTION_ES="Obtener la ruta de la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v code &>/dev/null; then
    which code
  else
    ERROR_NOT_FOUND "Visual Studio Code"
  fi
fi
