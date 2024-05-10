#!/bin/bash

SCRIPT_NAME="tmux-app_help"
SCRIPT_DESCRIPTION="Tmux help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v tmux &>/dev/null; then
    tmux --help
  else
    ERROR_NOT_FOUND "Tmux"
  fi
fi
