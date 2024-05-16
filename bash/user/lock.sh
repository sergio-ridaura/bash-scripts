#!/bin/bash

SCRIPT_NAME="user_lock"
SCRIPT_DESCRIPTION="Blocks a user in the system."
SCRIPT_DESCRIPTION_ES="Bloquea a un usuario en el sistema."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/usermod-command-in-linux/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && user="$1"
[ "$user" == "" ] && ERROR_ARGUMENT_MISSING 0
! id "$user" &>/dev/null && ERROR_NOT_FOUND "$user"

user=$1

# lock
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT usermod -L $user
fi
