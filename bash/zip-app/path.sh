#!/bin/bash

SCRIPT_NAME="zip-app_path"
SCRIPT_DESCRIPTION="Get Zip application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Zip."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v zip &>/dev/null; then
    which zip
  else
    ERROR_NOT_FOUND "zip"
  fi
fi
