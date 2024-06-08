#!/bin/bash

LAYOUT_NAME="mega"
LAYOUT_APP="Mega"
LAYOUT_VERSION="24.06.05"
LAYOUT_SEE="https://mega.io/"

LAYOUT_CODE() {
  echo "\
- Official website    https://mega.nz/
- Wikipedia           https://en.wikipedia.org/wiki/Mega_(service)"
}

# template
. "$(dirname "$0")/../template/links.sh"
