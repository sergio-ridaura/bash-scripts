#!/bin/bash

SCRIPT_NAME="tmux-app_uninstall"
SCRIPT_DESCRIPTION="Tmux application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Tmux"
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge tmux
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v tmux &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Tmux"
  fi
fi
