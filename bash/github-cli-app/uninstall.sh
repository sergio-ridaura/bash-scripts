#!/bin/bash

LAYOUT_NAME="github-cli"
LAYOUT_APP="GitHub CLI"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://cli.github.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge gh
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
