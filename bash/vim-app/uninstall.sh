#!/bin/bash

SCRIPT_NAME="vim-app_uninstall"
SCRIPT_DESCRIPTION="Vim application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Vim"
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge vim
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v vim &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Vim"
  fi
fi
