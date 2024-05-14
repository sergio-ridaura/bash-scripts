#!/bin/bash

LAYOUT_NAME="blender"
LAYOUT_APP="Blender"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.blender.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Blender \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
