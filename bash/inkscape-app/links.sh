#!/bin/bash

LAYOUT_NAME="inkscape"
LAYOUT_APP="Inkscape"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://inkscape.org/"

LAYOUT_CODE() {
  echo "\
- Official website    http://www.inkscape.org/
- Repository          https://gitlab.com/inkscape/inkscape
- Wikipedia           https://en.wikipedia.org/wiki/Inkscape
- Stack Overflow      https://stackoverflow.com/questions/tagged/inkscape"
}

# template
. "$(dirname "$0")/../template/links.sh"
