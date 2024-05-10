#!/bin/bash

SCRIPT_NAME="wget-app_info"
SCRIPT_DESCRIPTION="Wget info command."
SCRIPT_DESCRIPTION_ES="Comando de información de Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v wget &>/dev/null; then
    info wget
  else
    ERROR_NOT_FOUND "Wget"
  fi
fi
