#!/bin/bash

LAYOUT_NAME="wget"
LAYOUT_APP="Wget"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/wget/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES wget
}

. "$(dirname "$0")/../template/install.sh"
