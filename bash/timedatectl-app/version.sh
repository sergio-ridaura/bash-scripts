#!/bin/bash

LAYOUT_NAME="timedatectl"
LAYOUT_APP="timedatectl"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://systemd.io"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP '\(\K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
