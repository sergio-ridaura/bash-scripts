#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://node.org/"

LAYOUT_CODE() {
  which node
}

# template
. "$(dirname "$0")/../template/path.sh"
