#!/bin/bash

LAYOUT_NAME="npm"
LAYOUT_APP="Npm"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://docs.npmjs.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.npmjs.com
- Documentation       https://docs.npmjs.com/
- Repository          https://github.com/npm/cli
- Wikipedia           https://en.wikipedia.org/wiki/npm
- Stack Overflow      https://stackoverflow.com/questions/tagged/npm"
}

# template
. "$(dirname "$0")/../template/links.sh"
