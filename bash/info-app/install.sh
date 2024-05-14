#!/bin/bash

LAYOUT_NAME="info"
LAYOUT_APP="Info"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.gnu.org/software/texinfo/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES $LAYOUT_NAME
}

# template
. "$(dirname "$0")/../template/install.sh"
