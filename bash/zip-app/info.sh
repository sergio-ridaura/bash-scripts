#!/bin/bash

SCRIPT_NAME="zip-app_info"
SCRIPT_DESCRIPTION="Zip info command."
SCRIPT_DESCRIPTION_ES="Comando de información de  Zip."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v zip &>/dev/null; then
    info zip
  else
    ERROR_NOT_FOUND "Zip"
  fi
fi
