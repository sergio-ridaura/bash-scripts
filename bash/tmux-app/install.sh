#!/bin/bash

SCRIPT_NAME="tmux-app_install"
SCRIPT_DESCRIPTION="Tmux application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES tmux
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
