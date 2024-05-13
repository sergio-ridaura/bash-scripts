#!/bin/bash

LAYOUT_NAME="curl"
LAYOUT_APP="cURL"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://curl.se/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge curl
}

. "$(dirname "$0")/../template/uninstall.sh"
