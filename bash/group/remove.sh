#!/bin/bash

SCRIPT_NAME="user_remove"
SCRIPT_DESCRIPTION="Delete user group in the system."
SCRIPT_DESCRIPTION_ES="Eliminar grupo de usuarios en el sistema."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://www.techrepublic.com/article/how-to-create-users-and-groups-in-linux-from-the-command-line/"
SCRIPT_ARG=(name)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && name="$1"
[ "$name" == "" ] && ERROR_ARGUMENT_MISSING 0

# remove
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT groupdel $name
fi
