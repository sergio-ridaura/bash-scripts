#!/bin/bash

LAYOUT_NAME="curl"
LAYOUT_APP="cURL"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://curl.se/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'curl \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
