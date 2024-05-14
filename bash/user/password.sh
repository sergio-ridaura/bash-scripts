#!/bin/bash

SCRIPT_NAME="user_password"
SCRIPT_DESCRIPTION="Add or change the user's password in the system."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxhandbook.com/passwd-command/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -eq 0 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

user=$1

# password
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT passwd $user
fi
