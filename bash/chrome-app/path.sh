#!/bin/bash

LAYOUT_NAME="google-chrome"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  which google-chrome
}

# template
. "$(dirname "$0")/../template/path.sh"
