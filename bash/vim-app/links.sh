#!/bin/bash

SCRIPT_NAME="vim-app_links"
SCRIPT_DESCRIPTION="List of help links for Vim application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    http://www.vim.org/
- Repository          https://github.com/vim/vim
- Wikipedia           https://en.wikipedia.org/wiki/Vim_(text_editor)
- Stack Overflow      https://stackoverflow.com/questions/tagged/vim"
fi
