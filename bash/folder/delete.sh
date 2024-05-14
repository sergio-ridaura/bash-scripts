#!/bin/bash

SCRIPT_NAME="folder_delete"
SCRIPT_DESCRIPTION="Delete folder."
SCRIPT_DESCRIPTION_ES="Eliminar carpeta."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/remove-directory-linux/"
SCRIPT_ARG=(path)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && path="$1"
[ "$path" == "" ] && ERROR_ARGUMENT_MISSING 0

# new
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_Y" == true ]; then
    if $RUN_ROOT rm -r "$path"; then
      if [ "$ARG_BASH_M" == false ]; then
        echo $path
      fi
    fi
  else
    if $RUN_ROOT rm "$path"; then
      if [ "$ARG_BASH_M" == false ]; then
        echo $path
      fi
    fi
  fi
fi
