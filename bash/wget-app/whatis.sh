#!/bin/bash

SCRIPT_NAME="wget-app_watis"
SCRIPT_DESCRIPTION="Get description of the Wget application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Wget es un programa informático que recupera contenido de servidores web."
  else
    echo "Wget is a computer program that retrieves content from web servers."
  fi
fi
