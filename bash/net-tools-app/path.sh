#!/bin/bash

SCRIPT_NAME="net-tools-app_path"
SCRIPT_DESCRIPTION="Get Net-tools application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v net-tools &>/dev/null; then
    which net-tools
  else
    ERROR_NOT_FOUND "Net-tools"
  fi
fi
