#!/bin/bash

SCRIPT_NAME="file_copy"
SCRIPT_DESCRIPTION="Copy file."
SCRIPT_DESCRIPTION_ES="Copiar archivo."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/cp-command-in-linux/"
SCRIPT_ARG=(original copied)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && original="$1"
[ "$original" == "" ] && ERROR_ARGUMENT_MISSING 0
[ ! -f "$original" ] && ERROR_NOT_FOUND "$original"

[ $# -ge 2 ] && copied="$2"
[ "$copied" == "" ] && ERROR_ARGUMENT_MISSING 1
[ -f "$copied" ] && ERROR_FOUND "$copied"

# copy
if [ "$ARG_BASH_H" != true ]; then
  if $RUN_ROOT cp "$original" "$copied"; then
    if [ "$ARG_BASH_S" = true ]; then
      echo "copy $copied"
    fi
  fi
fi
