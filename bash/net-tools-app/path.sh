#!/bin/bash

LAYOUT_NAME="net-tools"
LAYOUT_APP="Net-tools"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://sourceforge.net/projects/net-tools/"

LAYOUT_CODE() {
  which net-tools
}

# template
. "$(dirname "$0")/../template/path.sh"
