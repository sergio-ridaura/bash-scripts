#!/bin/bash

SCRIPT_NAME="user_remove"
SCRIPT_DESCRIPTION="Removes a user in the system."
SCRIPT_DESCRIPTION_ES="Elimina a un usuario en el sistema."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/how-to-delete-users-in-linux-using-the-userdel-command/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && user="$1"
[ "$user" == "" ] && ERROR_ARGUMENT_MISSING 0
! id "$user" &>/dev/null && ERROR_NOT_FOUND "$user"

# remove
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT userdel $user
fi
