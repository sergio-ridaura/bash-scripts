#!/bin/bash

LAYOUT_NAME="zip"
LAYOUT_APP="Zip"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge zip
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
