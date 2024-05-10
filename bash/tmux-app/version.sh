#!/bin/bash

SCRIPT_NAME="tmux-app_version"
SCRIPT_DESCRIPTION="Get Tmux application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  tmux --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v tmux &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'tmux \K\d+\.\d+[a-zA-Z]+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Tmux"
  fi
fi
