#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://docs.npmjs.com/downloading-and-installing-node-js-and-npm"

LAYOUT_CODE() {
  if ! command -v $LAYOUT_NAME &>/dev/null; then
    "${SCRIPTS_PATH}/npm-app/install.sh" "$ARG_YES" "-m"
    $IS_ROOT apt install $ARG_YES nodejs
    "${SCRIPTS_PATH}/node-app/update.sh" "$ARG_YES" "-m"
  else
    echo $LAYOUT_APP is already
  fi
}

# template
. "$(dirname "$0")/../template/install.sh"
