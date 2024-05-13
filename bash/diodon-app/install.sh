#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES diodon
}

. "$(dirname "$0")/../template/install.sh"
