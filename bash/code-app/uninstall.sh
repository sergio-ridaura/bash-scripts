#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge code
}

. "$(dirname "$0")/../template/uninstall.sh"
