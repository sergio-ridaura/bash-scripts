#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://docs.npmjs.com/downloading-and-installing-node-js-and-npm"

LAYOUT_CODE() {
  "${SCRIPTS_PATH}/npm-app/install.sh" "$ARG_YES" "-m"
  $IS_ROOT apt install $ARG_YES nodejs
  "${SCRIPTS_PATH}/node-app/update.sh" "$ARG_YES" "-m"
}

# template
. "$(dirname "$0")/../template/install.sh"
