#!/bin/bash

SCRIPT_NAME="vim-app_info"
SCRIPT_DESCRIPTION="Vim info command."
SCRIPT_DESCRIPTION_ES="Comando de información de Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v vim &>/dev/null; then
    info vim
  else
    ERROR_NOT_FOUND "Vim"
  fi
fi
