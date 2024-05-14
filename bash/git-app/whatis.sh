#!/bin/bash

LAYOUT_NAME="git"
LAYOUT_APP="Git"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://git-scm.com/"

LAYOUT_CODE() {
  echo "Git is a version control software thinking about the efficiency, reliability and compatibility of maintaining application versions when they have a large number of source code files."
}

LAYOUT_CODE_ES() {
  echo "Git es un software de control de versiones pensando en la eficiencia, confiabilidad y compatibilidad del mantenimiento de versiones de aplicaciones cuando estas tienen una gran cantidad de archivos de código fuente."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
