#!/bin/bash

LAYOUT_NAME="wget"
LAYOUT_APP="Wget"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/wget/"

LAYOUT_CODE() {
  echo "Wget is a computer program that retrieves content from web servers."
}

LAYOUT_CODE_ES() {
  echo "Wget es un programa informático que recupera contenido de servidores web."
}

. "$(dirname "$0")/../template/whatis.sh"
