#!/bin/bash

SCRIPT_NAME="folder_exist"
SCRIPT_DESCRIPTION="Check that the folder exists."
SCRIPT_DESCRIPTION_ES="Comprueba que la carpeta existe."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/bash-check-if-file-exists/"
SCRIPT_ARG=(path)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && path="$1" || ERROR_ARGUMENT_MISSING 0

# exist
if [ "$ARG_BASH_H" != true ]; then
  if [ -d "$path" ]; then
    echo "true"
  else
    echo "false"
  fi
fi
