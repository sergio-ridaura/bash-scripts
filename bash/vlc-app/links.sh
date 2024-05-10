#!/bin/bash

SCRIPT_NAME="vlc-app_links"
SCRIPT_DESCRIPTION="List of help links for VLC application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación VLC."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.videolan.org/vlc/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    https://www.videolan.org/vlc/
- Repository          https://code.videolan.org/explore/projects/starred
- Wikipedia           https://en.wikipedia.org/wiki/VLC_media_player
- Stack Overflow      https://stackoverflow.com/questions/tagged/vlc"
fi
