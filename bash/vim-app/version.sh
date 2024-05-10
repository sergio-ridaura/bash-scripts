#!/bin/bash

SCRIPT_NAME="vim-app_version"
SCRIPT_DESCRIPTION="Get Vim application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  vim --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v vim &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Vim"
  fi
fi
