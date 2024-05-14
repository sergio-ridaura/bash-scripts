#!/bin/bash

LAYOUT_NAME="zip"
LAYOUT_APP="Zip"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES zip
}

# template
. "$(dirname "$0")/../template/install.sh"
