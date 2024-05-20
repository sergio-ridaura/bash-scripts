#!/bin/bash

LAYOUT_NAME="fs-uae"
LAYOUT_APP="FS-UAE"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://fs-uae.net/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'fs-uae \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
