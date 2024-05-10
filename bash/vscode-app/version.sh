#!/bin/bash

SCRIPT_NAME="vscode-app_version"
SCRIPT_DESCRIPTION="Get Visual Studio Code application version."
SCRIPT_DESCRIPTION_ES="Obtener la versión de la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v code &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(code --version 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
    else
      code --version
    fi
  else
    ERROR_NOT_FOUND "Visual Studio Code"
  fi
fi
