#!/bin/bash

SCRIPT_NAME="file_owner_edit"
SCRIPT_DESCRIPTION="Change the owner and group of the file."
SCRIPT_DESCRIPTION_ES="Cambiar el propietario y grupo del archivo."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://phoenixnap.com/kb/linux-chown-command-with-examples"
SCRIPT_ARG=(file user group)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -f "$file" ] && ERROR_NOT_FOUND "$file"

[ $# -ge 2 ] && name="$2" || name=$USER
id -u "$name" >/dev/null 2>&1 || ERROR_NOT_FOUND "$name"

[ $# -ge 3 ] && group="$3" || ERROR_ARGUMENT_MISSING 2
getent group "$group" >/dev/null 2>&1 || ERROR_NOT_FOUND "$group"

# edit
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT chown $name:$group $file
fi
