#!/bin/bash

LAYOUT_NAME="npm"
LAYOUT_APP="Npm"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://docs.npmjs.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge npm
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
