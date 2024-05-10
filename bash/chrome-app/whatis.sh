#!/bin/bash

SCRIPT_NAME="chrome-app_watis"
SCRIPT_DESCRIPTION="Get description of the Google Chrome application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Google Chrome es un navegador web desarrollado por Google. Es uno de los navegadores más populares y utilizados a nivel mundial."
  else
    echo "Google Chrome is a web browser developed by Google. It is one of the most popular and widely used browsers worldwide."
  fi
fi
