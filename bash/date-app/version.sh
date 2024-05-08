#!/bin/bash

SCRIPT_NAME="date-app_version"
SCRIPT_DESCRIPTION="Get date application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación date."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_I" != true ]; then
  if command -v date &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(date --version 2>&1 | grep -oP '(?<=date \(GNU coreutils\) )[^ ]+')
    else
      date --version
    fi
  else
    ERROR_NOT_FOUND "date"
  fi
fi
