#!/bin/bash

LAYOUT_NAME="obs"
LAYOUT_APP="OBS Studio"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://obsproject.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge obs-studio
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
