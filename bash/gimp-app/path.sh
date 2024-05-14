#!/bin/bash

LAYOUT_NAME="gimp"
LAYOUT_APP="Gimp"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.gimp.org/"

LAYOUT_CODE() {
  which gimp
}

# template
. "$(dirname "$0")/../template/path.sh"
