#!/bin/bash

LAYOUT_NAME="jlha"
LAYOUT_APP="LHA"
LAYOUT_VERSION="24.06.16"
LAYOUT_SEE="https://en.wikipedia.org/wiki/LHA_(file_format)"

LAYOUT_CODE() {
  rar -v
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'AR \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
