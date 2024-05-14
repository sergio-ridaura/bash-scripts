#!/bin/bash

SCRIPT_NAME="user_remove"
SCRIPT_DESCRIPTION="Removes a user in the system."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/how-to-delete-users-in-linux-using-the-userdel-command/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -eq 0 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

user=$1

# remove
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT userdel $user
fi
