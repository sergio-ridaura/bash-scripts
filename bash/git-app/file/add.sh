#!/bin/bash

SCRIPT_NAME="git-app_file_add"
SCRIPT_DESCRIPTION="Add file to Git commit."
SCRIPT_DESCRIPTION_ES="Agregar archivo al compromiso de Git."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://git-scm.com/docs/git-add/es"
SCRIPT_ARG=(file)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1"
[ "$file" == "" ] && ERROR_ARGUMENT_MISSING 0

# add
if [ "$ARG_BASH_H" != true ]; then
  git add "$file"
  if [ "$ARG_BASH_S" = true ]; then
    echo "add $file"
  fi
fi
