#!/bin/bash

LAYOUT_NAME="blender"
LAYOUT_APP="Blender"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.blender.org/"

LAYOUT_CODE() {
  blender --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Blender \K\d+\.\d+\.\d+')
}

. "$(dirname "$0")/../template/version.sh"
