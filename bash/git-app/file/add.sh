#!/bin/bash

SCRIPT_NAME="git-app_file_add"
SCRIPT_DESCRIPTION="Add file to Git commit."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://git-scm.com/docs/git-add/es"
SCRIPT_ARG=(file)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
file="$1"
[ $# -eq 0 ] && file="."

# add
if [ "$ARG_BASH_O" != true ]; then
  echo -en "$TEXT_DANGER"
  if git add "$file"; then
    echo -en "$TEXT_DEFAULT"
    if [ "$ARG_BASH_S" = true ]; then
      echo "add $file"
    fi
  fi
fi

echo -en "$TEXT_DEFAULT"
