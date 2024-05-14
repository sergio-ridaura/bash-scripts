#!/bin/bash

SCRIPT_NAME="license_create"
SCRIPT_DESCRIPTION="Create license file."
SCRIPT_VERSION="24.05.14"
SCRIPT_ARG=(path type user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -lt 3 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

path="$1/LICENSE"
type="$2"
user="$3"
short=$ARG_BASH_S

# create
if [ "$ARG_BASH_H" != true ]; then
  source $SCRIPTS_PATH/file/copy.sh "$FILES_PATH/license/$type/LICENSE" "$path" -m
  source $SCRIPTS_PATH/file/text/edit.sh "$path" "<USER>" "$user" -m
  source $SCRIPTS_PATH/file/text/edit.sh "$path" "<USER_CAPITAL>" "$(source $SCRIPTS_PATH/text/capital.sh "$user" -m)" -m
  source $SCRIPTS_PATH/file/text/edit.sh "$path" "<YEAR>" "$(source $SCRIPTS_PATH/year/get.sh -m)" -m
  if [ "$short" = true ]; then
    echo "create $path"
  fi
fi
