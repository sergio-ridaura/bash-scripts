#!/bin/bash

SCRIPT_NAME="group_new"
SCRIPT_DESCRIPTION="New user group in the system."
SCRIPT_DESCRIPTION_ES="Nuevo grupo de usuarios en el sistema.."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.techrepublic.com/article/how-to-create-users-and-groups-in-linux-from-the-command-line/"
SCRIPT_ARG=(group)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && group="$1" || ERROR_ARGUMENT_MISSING 0
! getent group "$group" &>/dev/null && ERROR_FOUND "$group"

# remove
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT addgroup $group
fi
