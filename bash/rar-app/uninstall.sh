#!/bin/bash

LAYOUT_NAME="rar"
LAYOUT_APP="RAR"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.rarlab.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge rar unrar
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
