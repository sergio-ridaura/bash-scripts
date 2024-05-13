#!/bin/bash

LAYOUT_NAME="vim"
LAYOUT_APP="Vim"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="http://www.vim.org/"

LAYOUT_CODE() {
  which vim
}

. "$(dirname "$0")/../template/path.sh"
