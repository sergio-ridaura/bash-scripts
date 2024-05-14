#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://docs.npmjs.com/downloading-and-installing-node-js-and-npm"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES nodejs
  source "$SCRIPTS_PATH/npm/install.sh"
  source "$SCRIPTS_PATH/npm/update.sh"
}

# template
. "$(dirname "$0")/../template/install.sh"
