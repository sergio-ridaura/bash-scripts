#!/bin/bash

SCRIPT_NAME="date-app_watis"
SCRIPT_DESCRIPTION="Get description of the date application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación date."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Imprima o configure la fecha y hora del sistema. Esta aplicación es parte de GNU coreutils."
  else
    echo "Print or set system date and time. This application is part of GNU coreutils."
  fi

fi
