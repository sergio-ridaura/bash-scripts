#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  diodon --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Diodon \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
