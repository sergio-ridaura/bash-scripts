#!/bin/bash

LAYOUT_NAME="github-cli"
LAYOUT_APP="GitHub CLI"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://cli.github.com/"

LAYOUT_CODE() {
  echo "GitHub CLI brings GitHub to your terminal. Free and open source."
}

LAYOUT_CODE_ES() {
  echo "GitHub CLI lleva GitHub a tu terminal. Gratis y de código abierto".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
