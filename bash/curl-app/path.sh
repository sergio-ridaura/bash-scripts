#!/bin/bash

LAYOUT_NAME="curl"
LAYOUT_APP="cURL"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://curl.se/"

LAYOUT_CODE() {
  which curl
}

. "$(dirname "$0")/../template/path.sh"
