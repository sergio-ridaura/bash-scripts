#!/bin/bash

LAYOUT_NAME="wget"
LAYOUT_APP="Wget"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/wget/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge wget
}

. "$(dirname "$0")/../template/uninstall.sh"
