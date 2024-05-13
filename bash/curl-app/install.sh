#!/bin/bash

LAYOUT_NAME="curl"
LAYOUT_APP="cURL"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://curl.se/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES curl
}

# template
. "$(dirname "$0")/../template/install.sh"
