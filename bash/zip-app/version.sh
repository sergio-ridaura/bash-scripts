#!/bin/bash

LAYOUT_NAME="zip"
LAYOUT_APP="Zip"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'This is Zip \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
