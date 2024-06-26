#!/bin/bash

LAYOUT_NAME="info"
LAYOUT_APP="Info"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://www.gnu.org/software/texinfo/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP '(?<=GNU texinfo\) )\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
