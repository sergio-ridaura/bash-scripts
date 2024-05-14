#!/bin/bash

SCRIPT_NAME="file_owner_edit"
SCRIPT_DESCRIPTION="Change the owner and group of the file."
SCRIPT_DESCRIPTION_ES="Cambiar el propietario y grupo del archivo."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://phoenixnap.com/kb/linux-chown-command-with-examples"
SCRIPT_ARG=(file user group)

# tools
. "$(dirname "$0")/../../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1"
[ "$file" == "" ] && ERROR_ARGUMENT_MISSING 0

user=$USER
[ $# -ge 2 ] && user="$2"
[ "$user" == "" ] && user="root"

group=$(id -nG | awk '{print $1}')
[ $# -ge 3 ] && group="$3"

# edit
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT chown $user:$group $file
fi
