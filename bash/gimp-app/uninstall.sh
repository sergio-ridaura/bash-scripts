#!/bin/bash

LAYOUT_NAME="gimp"
LAYOUT_APP="Gimp"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.gimp.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge gimp
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
