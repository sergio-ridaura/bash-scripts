#!/bin/bash

SCRIPT_NAME="wget-app_help"
SCRIPT_DESCRIPTION="Wget help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v wget &>/dev/null; then
    wget --help
  else
    ERROR_NOT_FOUND "Wget"
  fi
fi
