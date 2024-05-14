#!/bin/bash

LAYOUT_NAME="libreoffice"
LAYOUT_APP="LibreOffice"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://libreoffice.org/"

LAYOUT_CODE() {
  echo "LibreOffice is a free and open-source office productivity software suite. It was forked in 2010 from OpenOffice.org, an open-sourced version of the earlier StarOffice."
}

LAYOUT_CODE_ES() {
  echo "LibreOffice es un paquete de software de productividad de oficina gratuito y de código abierto. Se bifurcó en 2010 de OpenOffice.org, una versión de código abierto del anterior StarOffice".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
