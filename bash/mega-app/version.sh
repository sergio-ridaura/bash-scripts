#!/bin/bash

LAYOUT_NAME="mega"
LAYOUT_APP="Mega"
LAYOUT_VERSION="24.06.05"
LAYOUT_SEE="https://mega.io/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Mega \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
