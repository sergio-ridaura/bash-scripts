#!/bin/bash

LAYOUT_NAME="vlc"
LAYOUT_APP="VLC"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.videolan.org/vlc/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge vlc
}

. "$(dirname "$0")/../template/uninstall.sh"
