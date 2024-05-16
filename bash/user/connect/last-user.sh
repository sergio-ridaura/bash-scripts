#!/bin/bash

SCRIPT_NAME="user_connect_last-user"
SCRIPT_DESCRIPTION="When was the last time the user logged in."
SCRIPT_DESCRIPTION="¿Cuándo fue la última vez que el usuario inició sesión?"
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/last-command-in-linux/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && user="$1"
[ "$user" == "" ] && ERROR_ARGUMENT_MISSING 0
! id "$user" &>/dev/null && ERROR_NOT_FOUND "$user"

# last
if [ "$ARG_BASH_H" != true ]; then
  last $user
fi
