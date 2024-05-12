#!/bin/bash

LAYOUT_NAME="net-tools"
LAYOUT_APP="Net-tools"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://sourceforge.net/projects/net-tools/"

LAYOUT_CODE() {
  echo "Net-tools is a command-line utilities that provide network-related functions on Linux and UNIX-based operating systems."
}

LAYOUT_CODE_ES() {
  echo "Net-tools es una utilidad de línea de comandos que proporciona funciones relacionadas con la red en sistemas operativos basados ​​en Linux y UNIX".
}

. "$(dirname "$0")/../template/whatis.sh"
