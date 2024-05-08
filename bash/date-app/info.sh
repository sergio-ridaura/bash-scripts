#!/bin/bash

SCRIPT_NAME="date-app_info"
SCRIPT_DESCRIPTION="date info command."
SCRIPT_DESCRIPTION_ES="Comando de información de date."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_I" != true ]; then
  if command -v date &>/dev/null; then
    info date
  else
    ERROR_NOT_FOUND "date"
  fi
fi
