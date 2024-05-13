#!/bin/bash

LAYOUT_NAME="vim"
LAYOUT_APP="Vim"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="http://www.vim.org/"

LAYOUT_CODE() {
  echo "\
- Official website    http://www.vim.org/
- Repository          https://github.com/vim/vim
- Wikipedia           https://en.wikipedia.org/wiki/Vim_(text_editor)
- Stack Overflow      https://stackoverflow.com/questions/tagged/vim"
}

# template
. "$(dirname "$0")/../template/links.sh"
