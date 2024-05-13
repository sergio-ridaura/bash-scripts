#!/bin/bash

LAYOUT_NAME="google-chrome"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  google-chrome --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Google Chrome \K\d+\.\d+\.\d+.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
