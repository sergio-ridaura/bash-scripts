#!/bin/bash

LAYOUT_NAME="curl"
LAYOUT_APP="cURL"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://curl.se/"

LAYOUT_CODE() {
  echo "cURL is a command line tool used to make applications and receive answers from or to servers using several network protocols, such as HTTP, HTTPS, FTP, SMTP, among others."
}

LAYOUT_CODE_ES() {
  echo "cURL es una herramienta de línea de comandos utilizada para crear aplicaciones y recibir respuestas desde o hacia servidores utilizando varios protocolos de red, como HTTP, HTTPS, FTP, SMTP, entre otros."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
