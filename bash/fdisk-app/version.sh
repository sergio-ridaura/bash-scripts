#!/bin/bash

LAYOUT_NAME="fdisk"
LAYOUT_APP="fdisk"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://linux.die.net/man/8/fdisk"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'util-linux \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
