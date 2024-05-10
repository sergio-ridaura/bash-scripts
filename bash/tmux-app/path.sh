#!/bin/bash

SCRIPT_NAME="tmux-app_path"
SCRIPT_DESCRIPTION="Get Tmux application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v tmux &>/dev/null; then
    which tmux
  else
    ERROR_NOT_FOUND "Tmux"
  fi
fi
