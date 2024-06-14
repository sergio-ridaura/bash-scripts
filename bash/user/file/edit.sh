#!/bin/bash

SCRIPT_NAME="user_file_edit"
SCRIPT_DESCRIPTION="Change file user."
SCRIPT_DESCRIPTION_ES="Cambiar usuario de archivo."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/linux-chown-command/"
SCRIPT_ARG=(file user)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -e "$file" ] && ERROR_NOT_FOUND "$file"

[ $# -ge 2 ] && name="$2" || name=$USER
id "$name" &>/dev/null || ERROR_NOT_FOUND "$name"

# edit
if [ "$ARG_BASH_H" != true ]; then
  $RUN_ROOT chown "$name" "$file"
fi
