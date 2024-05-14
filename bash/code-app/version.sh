#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://code.visualstudio.com/"

if [ "$(whoami)" == "root" ]; then
  LAYOUT_CODE() {
    code --user-data-dir . --version
  }
fi

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | head -n 1)
}

# template
. "$(dirname "$0")/../template/version.sh"
