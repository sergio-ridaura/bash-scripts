#!/bin/bash

LAYOUT_NAME="mega"
LAYOUT_APP="Mega"
LAYOUT_VERSION="24.06.05"
LAYOUT_SEE="https://mega.io/"

LAYOUT_CODE() {
  $IS_ROOT wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb && sudo apt $ARG_YES install "$PWD/megasync-xUbuntu_22.04_amd64.deb"
}

# template
. "$(dirname "$0")/../template/install.sh"
