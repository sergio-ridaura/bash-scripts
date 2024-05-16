#!/bin/bash

SCRIPT_NAME="file_delete"
SCRIPT_DESCRIPTION="Delete file."
SCRIPT_DESCRIPTION_ES="Borra archivo."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/how-to-remove-files-and-directories-using-linux-command-line/"
SCRIPT_ARG=(file)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1"
[ "$file" == "" ] && ERROR_ARGUMENT_MISSING 0
[ ! -f "$file" ] && ERROR_NOT_FOUND "$file"

# new
if [ "$ARG_BASH_H" != true ]; then
  if $RUN_ROOT rm "$file"; then
    if [ "$ARG_BASH_S" = true ]; then
      echo $file
    fi
  fi
fi
