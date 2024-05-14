#!/bin/bash

LAYOUT_NAME="google-chrome-stable"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge google-chrome-stable google-chrome
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
