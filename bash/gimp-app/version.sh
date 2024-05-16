#!/bin/bash

LAYOUT_NAME="gimp"
LAYOUT_APP="Gimp"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://www.gimp.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'version \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
