#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge diodon
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
