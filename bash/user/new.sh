#!/bin/bash

SCRIPT_NAME="user_password"
SCRIPT_DESCRIPTION="Add or change the user's password in the system."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.geeksforgeeks.org/useradd-command-in-linux-with-examples/"
SCRIPT_ARG=(user folder)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -lt 1 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

user=$1

[ $# -ge 2 ] && [ "$2" == "true" ] && folder=" -m"

# new
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT useradd $folder $user
fi
