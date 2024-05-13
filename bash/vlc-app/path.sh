#!/bin/bash

LAYOUT_NAME="vlc"
LAYOUT_APP="VLC"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.videolan.org/vlc/"

LAYOUT_CODE() {
  which vlc
}

# template
. "$(dirname "$0")/../template/path.sh"
