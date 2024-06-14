#!/bin/bash

SCRIPT_NAME="file_new"
SCRIPT_DESCRIPTION="Create new file."
SCRIPT_DESCRIPTION_ES="Crear nuevo archivo."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://phoenixnap.com/kb/touch-command-in-linux"
SCRIPT_ARG=(file)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1" || ERROR_ARGUMENT_MISSING 0
[ -f "$file" ] && ERROR_FOUND "$file"

# new
if [ "$ARG_BASH_H" != true ]; then
  if $RUN_ROOT touch "$file"; then
    if [ "$ARG_BASH_S" = true ]; then
      echo $file
    fi
  fi
fi
