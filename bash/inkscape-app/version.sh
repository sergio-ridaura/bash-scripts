#!/bin/bash

LAYOUT_NAME="inkscape"
LAYOUT_APP="Inkscape"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://inkscape.org/"

LAYOUT_CODE() {
  inkscape --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Inkscape \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
