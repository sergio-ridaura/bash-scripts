#!/bin/bash

LAYOUT_NAME="rar"
LAYOUT_APP="RAR"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.rarlab.com/"

LAYOUT_CODE() {
  which rar
}

# template
. "$(dirname "$0")/../template/path.sh"
