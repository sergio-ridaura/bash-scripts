#!/bin/bash

SCRIPT_NAME="file_text_edit"
SCRIPT_DESCRIPTION="Edit text in a file."
SCRIPT_DESCRIPTION_ES="Editar texto en un archivo."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.linuxscrew.com/bash-sed"
SCRIPT_ARG=(file edit text)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1" || ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && edit="$2" || ERROR_ARGUMENT_MISSING 1

[ $# -ge 3 ] && text="$3" || ERROR_ARGUMENT_MISSING 2

# edit
if [ "$ARG_BASH_H" != true ]; then
  if $RUN_ROOT sed -i "s/$edit/$text/g" "$file"; then
    if [ "$ARG_BASH_S" = true ]; then
      echo "edit $edit || $text"
    fi
  fi
fi
