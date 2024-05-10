#!/bin/bash

SCRIPT_NAME="vim-app_install"
SCRIPT_DESCRIPTION="Vim application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge vim
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
