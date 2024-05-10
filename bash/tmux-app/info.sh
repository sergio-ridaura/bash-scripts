#!/bin/bash

SCRIPT_NAME="tmux-app_info"
SCRIPT_DESCRIPTION="Tmux info command."
SCRIPT_DESCRIPTION_ES="Comando de información de Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v tmux &>/dev/null; then
    info tmux
  else
    ERROR_NOT_FOUND "Tmux"
  fi
fi
