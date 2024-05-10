#!/bin/bash

SCRIPT_NAME="date-app_help"
SCRIPT_DESCRIPTION="date help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de date."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v date &>/dev/null; then
    date --help
  else
    ERROR_NOT_FOUND "date"
  fi
fi
