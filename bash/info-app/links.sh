#!/bin/bash

LAYOUT_NAME="info"
LAYOUT_APP="Info"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.gnu.org/software/texinfo/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.blender.org/
- Documentation       https://docs.blender.org/manual/en/latest/
- Repository          https://git.blender.org/gitweb/gitweb.cgi/blender.git
- Wikipedia           https://en.wikipedia.org/wiki/Blender_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/blender"
}

# template
. "$(dirname "$0")/../template/links.sh"
