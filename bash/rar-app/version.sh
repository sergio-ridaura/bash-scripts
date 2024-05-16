#!/bin/bash

LAYOUT_NAME="rar"
LAYOUT_APP="RAR"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://www.rarlab.com/"

LAYOUT_CODE() {
  rar -v
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'AR \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
