#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  code --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
}

. "$(dirname "$0")/../template/version.sh"
