#!/bin/bash

SCRIPT_NAME="folder_new"
SCRIPT_DESCRIPTION="Create new folder."
SCRIPT_DESCRIPTION_ES="Crear nueva carpeta."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://www.sean-lloyd.com/post/using-bash-mkdir/"
SCRIPT_ARG=(path)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && path="$1"
[ "$path" == "" ] && ERROR_ARGUMENT_MISSING 0
[ -d "$path" ] && ERROR_FOUND "$path"

# new
if [ "$ARG_BASH_H" != true ]; then
  if $RUN_ROOT mkdir "$path"; then
    if [ "$ARG_BASH_S" = true ]; then
      echo "new $path"
    fi
  fi
fi
