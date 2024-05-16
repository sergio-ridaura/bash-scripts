#!/bin/bash

LAYOUT_NAME="ifconfig"
LAYOUT_APP="ifconfig"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://sourceforge.net/projects/net-tools/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'net-tools \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
