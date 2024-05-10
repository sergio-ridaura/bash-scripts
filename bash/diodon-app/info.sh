#!/bin/bash

SCRIPT_NAME="diodon-app_info"
SCRIPT_DESCRIPTION="Diodon info command."
SCRIPT_DESCRIPTION_ES="Comando de información de Diodon."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v diodon &>/dev/null; then
    info diodon
  else
    ERROR_NOT_FOUND "Diodon"
  fi
fi
