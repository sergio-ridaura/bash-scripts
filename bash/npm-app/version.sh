#!/bin/bash

LAYOUT_NAME="npm"
LAYOUT_APP="Npm"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://docs.npmjs.com/"

LAYOUT_CODE() {
  blender --version
}

LAYOUT_CODE_SHORT() {
  LAYOUT_CODE
}

# template
. "$(dirname "$0")/../template/version.sh"
