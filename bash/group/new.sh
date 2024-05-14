#!/bin/bash

SCRIPT_NAME="user_new"
SCRIPT_DESCRIPTION="New user group in the system."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.techrepublic.com/article/how-to-create-users-and-groups-in-linux-from-the-command-line/"
SCRIPT_ARG=(name)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -eq 0 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

name="$1"

# remove
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT groupdel $name
fi
