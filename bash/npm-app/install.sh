#!/bin/bash

LAYOUT_NAME="npm"
LAYOUT_APP="Npm"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://docs.npmjs.com/downloading-and-installing-node-js-and-npm"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES npm
}

# template
. "$(dirname "$0")/../template/install.sh"
