#!/bin/bash

LAYOUT_NAME="vlc"
LAYOUT_APP="VLC"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.videolan.org/vlc/"

LAYOUT_CODE() {
  echo "VLC is an open source, cross-platform media player. The full name of VLC is VLC media player and it is developed by the non-profit organization VideoLAN."
}

LAYOUT_CODE_ES() {
  echo "VLC es un reproductor multimedia multiplataforma de código abierto. El nombre completo de VLC es VLC media player y está desarrollado por la organización sin fines de lucro VideoLAN".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
