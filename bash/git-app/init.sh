#!/bin/bash

SCRIPT_NAME="git-app_init"
SCRIPT_DESCRIPTION="Start Git project."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://git-scm.com/docs/git-init"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# init
if [ "$ARG_BASH_O" != true ]; then
  results=$(tail -n 1 <<<"$(git init 2>&1)")
  if [ "$ARG_BASH_S" = true ]; then
    if [[ ! "$results" =~ "Inicializado" ]]; then
      echo -en "$TEXT_DANGER"
    fi
    echo "$results"
  fi
fi

echo -en "$TEXT_DEFAULT"
