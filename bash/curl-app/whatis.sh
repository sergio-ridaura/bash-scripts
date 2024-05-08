#!/bin/bash

SCRIPT_NAME="curl-app_watis"
SCRIPT_DESCRIPTION="Get description of the cURL application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_I" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "cURL is a command line tool used to make applications and receive answers from or to servers using several network protocols, such as HTTP, HTTPS, FTP, SMTP, among others."
  else
    echo "cURL es una herramienta de línea de comandos utilizada para crear aplicaciones y recibir respuestas desde o hacia servidores utilizando varios protocolos de red, como HTTP, HTTPS, FTP, SMTP, entre otros."
  fi
fi
