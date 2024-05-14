#!/bin/bash

LAYOUT_NAME="edge"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE() {
  blender --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Microsoft Edge \K\d+\.\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
