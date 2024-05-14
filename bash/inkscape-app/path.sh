#!/bin/bash

LAYOUT_NAME="inkscape"
LAYOUT_APP="Inkscape"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://inkscape.org/"

LAYOUT_CODE() {
  which inkscape
}

# template
. "$(dirname "$0")/../template/path.sh"
