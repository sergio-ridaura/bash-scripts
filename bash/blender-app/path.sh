#!/bin/bash

LAYOUT_NAME="blender"
LAYOUT_APP="Blender"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.blender.org/"

LAYOUT_CODE() {
  which blender
}

# template
. "$(dirname "$0")/../template/path.sh"
