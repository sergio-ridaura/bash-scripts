#!/bin/bash

LAYOUT_NAME="rar"
LAYOUT_APP="RAR"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.rarlab.com/"

LAYOUT_CODE() {
  rar --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'versión \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
