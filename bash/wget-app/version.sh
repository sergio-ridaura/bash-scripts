#!/bin/bash

LAYOUT_NAME="wget"
LAYOUT_APP="Wget"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.gnu.org/software/wget/"

LAYOUT_CODE() {
  wget --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
