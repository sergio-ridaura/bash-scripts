#!/bin/bash

LAYOUT_NAME="google-chrome"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge google-chrome
}

. "$(dirname "$0")/../template/uninstall.sh"
