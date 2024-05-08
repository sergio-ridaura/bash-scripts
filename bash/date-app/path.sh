#!/bin/bash

SCRIPT_NAME="date-app_path"
SCRIPT_DESCRIPTION="Get date application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación date."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_I" != true ]; then
  if command -v date &>/dev/null; then
    which date
  else
    ERROR_NOT_FOUND "date"
  fi
fi
