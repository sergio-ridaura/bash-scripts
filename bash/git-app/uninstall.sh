#!/bin/bash

LAYOUT_NAME="git"
LAYOUT_APP="Git"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://git-scm.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge git
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
