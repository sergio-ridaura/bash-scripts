#!/bin/bash

LAYOUT_NAME="obs"
LAYOUT_APP="OBS Studio"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://obsproject.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://obsproject.com
- Documentation       https://obsproject.com/help
- Repository          https://github.com/obsproject/obs-studio
- Wikipedia           https://en.wikipedia.org/wiki/OBS_Studio
- Stack Overflow      https://stackoverflow.com/questions/tagged/obs-studio
- Luces, Cámara, ...  https://www.youtube.com/@LucesCamaraAprendo"
}

# template
. "$(dirname "$0")/../template/links.sh"
