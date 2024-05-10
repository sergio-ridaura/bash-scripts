#!/bin/bash

SCRIPT_NAME="net-tools-app_watis"
SCRIPT_DESCRIPTION="Get description of the Net-tools application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then

  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Net-tools es una utilidad de línea de comandos que proporciona funciones relacionadas con la red en sistemas operativos basados ​​en Linux y UNIX".
  else
    echo "Net-tools is a command-line utilities that provide network-related functions on Linux and UNIX-based operating systems."
  fi
fi
