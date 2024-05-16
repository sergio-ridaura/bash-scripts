#!/bin/bash

LAYOUT_NAME="gh"
LAYOUT_APP="GitHub CLI"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://cli.github.com/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'gh version \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
