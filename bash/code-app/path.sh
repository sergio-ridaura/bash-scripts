#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  which code
}

. "$(dirname "$0")/../template/path.sh"
