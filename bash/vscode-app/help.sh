#!/bin/bash

SCRIPT_NAME="vscode-app_help"
SCRIPT_DESCRIPTION="Visual Studio Code help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Visual Studio Code."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v code &>/dev/null; then
    code --help
  else
    ERROR_NOT_FOUND "Visual Studio Code"
  fi
fi
