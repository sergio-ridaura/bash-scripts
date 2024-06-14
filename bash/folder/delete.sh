#!/bin/bash

SCRIPT_NAME="folder_delete"
SCRIPT_DESCRIPTION="Delete folder."
SCRIPT_DESCRIPTION_ES="Eliminar carpeta."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/remove-directory-linux/"
SCRIPT_ARG=(path recursive)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && path="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -d "$path" ] && ERROR_NOT_FOUND "$path"

[ $# -ge 2 ] && recursive="$2"
[ "$recursive" == "true" ] && recursive="f" || recursive=""

# new
if [ "$ARG_BASH_H" != true ]; then
  echo $RUN_ROOT rm -r"$recursive" "$path"
  if [ "$ARG_BASH_S" == false ]; then
    echo $path
  fi
fi
