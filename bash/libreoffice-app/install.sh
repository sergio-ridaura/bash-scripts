#!/bin/bash

LAYOUT_NAME="libreoffice"
LAYOUT_APP="LibreOffice"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://libreoffice.org/"

LAYOUT_CODE() {
  $IS_ROOT add-apt-repository $ARG_YES ppa:libreoffice/ppa
  $IS_ROOT apt install $ARG_YES libreoffice
}

# template
. "$(dirname "$0")/../template/install.sh"
