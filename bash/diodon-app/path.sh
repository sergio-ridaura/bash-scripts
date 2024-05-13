#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  which diodon
}

# template
. "$(dirname "$0")/../template/path.sh"
