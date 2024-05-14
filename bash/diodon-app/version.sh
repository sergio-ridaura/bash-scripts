#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  dpkg -l diodon
}

LAYOUT_CODE_SHORT() {
  echo $(dpkg -s diodon | grep 'Version' 2>&1 | grep -oP 'Version: \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
