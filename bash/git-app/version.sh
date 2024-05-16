#!/bin/bash

LAYOUT_NAME="git"
LAYOUT_APP="Git"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://git-scm.com/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'git version \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
