#!/bin/bash

SCRIPT_NAME="zip-app_help"
SCRIPT_DESCRIPTION="Zip help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Zip."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v zip &>/dev/null; then
    zip --help
  else
    ERROR_NOT_FOUND "Zip"
  fi
fi
