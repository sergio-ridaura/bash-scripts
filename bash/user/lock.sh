#!/bin/bash

SCRIPT_NAME="user_lock"
SCRIPT_DESCRIPTION="Blocks a user in the system."
SCRIPT_DESCRIPTION_ES="Bloquea a un usuario en el sistema."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/usermod-command-in-linux/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && name="$1" || ERROR_ARGUMENT_MISSING 0
! id "$name" &>/dev/null && ERROR_NOT_FOUND "$name"

name=$1

# lock
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT usermod -L $name
fi
