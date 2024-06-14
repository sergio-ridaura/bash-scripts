#!/bin/bash

SCRIPT_NAME="user_group_list"
SCRIPT_DESCRIPTION="List of user groups."
SCRIPT_DESCRIPTION_ES="Lista de grupos de usuario."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/how-to-list-groups-in-linux/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && name="$1" || ERROR_ARGUMENT_MISSING 0
! id "$name" &>/dev/null && ERROR_NOT_FOUND "$name"

# new
if [ "$ARG_BASH_H" != true ]; then
  groups $name
fi
