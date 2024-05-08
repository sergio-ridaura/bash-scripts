#!/bin/bash

SCRIPT_NAME="diodon-app_help"
SCRIPT_DESCRIPTION="Diodon help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Diodon."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://systemd.io"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_I" != true ]; then
  if command -v diodon &>/dev/null; then
    diodon --help
  else
    ERROR_NOT_FOUND "Diodon"
  fi
fi
