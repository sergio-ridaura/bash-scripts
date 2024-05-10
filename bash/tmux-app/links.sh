#!/bin/bash

SCRIPT_NAME="tmux-app_links"
SCRIPT_DESCRIPTION="List of help links for Tmux application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    https://tmux.github.io/
- Repository          https://github.com/tmux/tmux
- Wikipedia           https://en.wikipedia.org/wiki/tmux
- Stack Overflow      https://stackoverflow.com/questions/tagged/tmux"
fi
