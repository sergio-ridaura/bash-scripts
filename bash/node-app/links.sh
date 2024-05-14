#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://node.org/"

LAYOUT_CODE() {
  echo "\
- Official website    http://node.org/
- Documentation       https://nodejs.org/docs/latest/api/
- Repository          https://github.com/nodejs/node
- Wikipedia           https://en.wikipedia.org/wiki/Node.js
- Stack Overflow      https://stackoverflow.com/questions/tagged/node"
}

# template
. "$(dirname "$0")/../template/links.sh"
