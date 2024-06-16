#!/bin/bash

LAYOUT_NAME="jlha"
LAYOUT_APP="LHA"
LAYOUT_VERSION="24.06.16"
LAYOUT_SEE="https://en.wikipedia.org/wiki/LHA_(file_format)"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES jlha-utils
}

# template
. "$(dirname "$0")/../template/install.sh"
