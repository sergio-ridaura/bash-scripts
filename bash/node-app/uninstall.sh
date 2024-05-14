#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://node.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge node
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
