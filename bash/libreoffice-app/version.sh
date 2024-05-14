#!/bin/bash

LAYOUT_NAME="libreoffice"
LAYOUT_APP="LibreOffice"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://libreoffice.org/"

LAYOUT_CODE() {
  libreoffice --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP '(?<=LibreOffice )\d+(\.\d+)+')
}

# template
. "$(dirname "$0")/../template/version.sh"
