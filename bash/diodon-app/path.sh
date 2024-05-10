#!/bin/bash

SCRIPT_NAME="diodon-app_path"
SCRIPT_DESCRIPTION="Get Diodon application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Diodon."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v diodon &>/dev/null; then
    which diodon
  else
    ERROR_NOT_FOUND "Diodon"
  fi
fi
