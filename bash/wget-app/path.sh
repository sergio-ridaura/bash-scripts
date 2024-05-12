#!/bin/bash

LAYOUT_NAME="wget"
LAYOUT_APP="Wget"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/wget/"

LAYOUT_CODE() {
  which wget
}

. "$(dirname "$0")/../template/path.sh"
