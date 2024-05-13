#!/bin/bash

LAYOUT_NAME="vim"
LAYOUT_APP="Vim"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="http://www.vim.org/"

LAYOUT_CODE() {
  vim --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
}

. "$(dirname "$0")/../template/version.sh"
