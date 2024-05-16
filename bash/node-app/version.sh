#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://node.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'v\K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
