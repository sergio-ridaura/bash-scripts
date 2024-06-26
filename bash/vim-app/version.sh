#!/bin/bash

LAYOUT_NAME="vim"
LAYOUT_APP="Vim"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="http://www.vim.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
