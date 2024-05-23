#!/bin/bash

LAYOUT_NAME="opera"
LAYOUT_APP="Opera"
LAYOUT_VERSION="24.05.23"
LAYOUT_SEE="https://www.opera.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.opera.com/"
}

# template
. "$(dirname "$0")/../template/links.sh"
