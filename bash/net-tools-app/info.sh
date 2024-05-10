#!/bin/bash

SCRIPT_NAME="net-tools-app_info"
SCRIPT_DESCRIPTION="Net-tools info command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v net-tools &>/dev/null; then
    info net-tools
  else
    ERROR_NOT_FOUND "Net-tools"
  fi
fi
