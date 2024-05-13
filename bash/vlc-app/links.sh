#!/bin/bash

LAYOUT_NAME="vlc"
LAYOUT_APP="VLC"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.videolan.org/vlc/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.videolan.org/vlc/
- Repository          https://code.videolan.org/explore/projects/starred
- Wikipedia           https://en.wikipedia.org/wiki/VLC_media_player
- Stack Overflow      https://stackoverflow.com/questions/tagged/vlc"
}

# template
. "$(dirname "$0")/../template/links.sh"
