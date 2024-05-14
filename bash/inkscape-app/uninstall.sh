#!/bin/bash

LAYOUT_NAME="inkscape"
LAYOUT_APP="Inkscape"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://inkscape.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge inkscape
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
