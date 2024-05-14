#!/bin/bash

LAYOUT_NAME="libreoffice"
LAYOUT_APP="LibreOffice"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://libreoffice.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge libreoffice
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
