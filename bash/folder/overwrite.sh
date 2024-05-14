#!/bin/bash

SCRIPT_NAME="folder_overwrite"
SCRIPT_DESCRIPTION="Overwrite folder."
SCRIPT_DESCRIPTION_ES="Sobrescribir carpeta."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.sean-lloyd.com/post/using-bash-mkdir/"
SCRIPT_ARG=(path)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && path="$1"
[ "$path" == "" ] && ERROR_ARGUMENT_MISSING 0

# new
if [ "$ARG_BASH_H" != true ]; then
  if [ $(bash "$SCRIPTS_PATH/folder/exist.sh" "$path" -m) == "true" ]; then
    source $SCRIPTS_PATH/folder/delete.sh "$path" -u -m -y
  fi
  source $SCRIPTS_PATH/folder/new.sh "$path" -m
  if [ "$ARG_BASH_S" = true ]; then
    echo "overwrite $path"
  fi
fi
