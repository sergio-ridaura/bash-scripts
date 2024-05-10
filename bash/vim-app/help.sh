#!/bin/bash

SCRIPT_NAME="vim-app_help"
SCRIPT_DESCRIPTION="Vim help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v vim &>/dev/null; then
    vim --help
  else
    ERROR_NOT_FOUND "Vim"
  fi
fi
