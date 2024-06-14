#!/bin/bash

SCRIPT_NAME="user_group_add"
SCRIPT_DESCRIPTION="Add user to group."
SCRIPT_DESCRIPTION_ES="Añadir usuario a grupo."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/how-to-add-user-to-group-in-linux/"
SCRIPT_ARG=(user group)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && name="$1" || ERROR_ARGUMENT_MISSING 0
! id "$name" &>/dev/null && ERROR_NOT_FOUND "$name"

[ $# -ge 2 ] && group="$2" || ERROR_ARGUMENT_MISSING 1
! getent group "$group" &>/dev/null && ERROR_NOT_FOUND "$group"

# add
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT adduser $name $group
fi
