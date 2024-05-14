#!/bin/bash

SCRIPT_NAME="user_lock"
SCRIPT_DESCRIPTION="Blocks a user in the system."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/usermod-command-in-linux/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -eq 0 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

user=$1

# lock
if [ "$ARG_BASH_O" != true ]; then
  $IS_ROOT usermod -L $user
fi
