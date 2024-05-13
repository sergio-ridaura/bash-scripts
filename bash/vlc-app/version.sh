#!/bin/bash

LAYOUT_NAME="vlc"
LAYOUT_APP="VLC"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.videolan.org/vlc/"

LAYOUT_CODE() {
  vlc --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Diodon \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
