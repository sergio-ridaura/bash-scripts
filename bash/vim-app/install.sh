#!/bin/bash

LAYOUT_NAME="vim"
LAYOUT_APP="Vim"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="http://www.vim.org/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES vim
}

# template
. "$(dirname "$0")/../template/install.sh"
