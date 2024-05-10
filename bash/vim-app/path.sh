#!/bin/bash

SCRIPT_NAME="vim-app_path"
SCRIPT_DESCRIPTION="Get Vim application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v vim &>/dev/null; then
    which vim
  else
    ERROR_NOT_FOUND "Diodon"
  fi
fi
