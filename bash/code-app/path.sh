#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  which code
}

# template
. "$(dirname "$0")/../template/path.sh"
