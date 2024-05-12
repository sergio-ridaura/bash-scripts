#!/bin/bash

LAYOUT_NAME="blender"
LAYOUT_APP="Blender"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.blender.org/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.blender.org/
- Documentation       https://docs.blender.org/manual/en/latest/
- Repository          https://git.blender.org/gitweb/gitweb.cgi/blender.git
- Wikipedia           https://en.wikipedia.org/wiki/Blender_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/blender"
}

. "$(dirname "$0")/../template/links.sh"
