#!/bin/bash

LAYOUT_NAME="obs"
LAYOUT_APP="OBS Studio"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://obsproject.com/"

LAYOUT_CODE() {
  obs --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'OBS Studio - \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
