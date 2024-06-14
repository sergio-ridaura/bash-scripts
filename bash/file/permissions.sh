#!/bin/bash

SCRIPT_NAME="file_permissions"
SCRIPT_DESCRIPTION="Change file permissions."
SCRIPT_DESCRIPTION_ES="Cambiar permisos de archivo."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.tomshardware.com/how-to/change-file-directory-permissions-linux"
SCRIPT_ARG=(file permission)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -e "$file" ] && ERROR_NOT_FOUND "$file"

[ $# -ge 2 ] && permission="$2" || ERROR_ARGUMENT_MISSING 1

# permissions
if [ "$ARG_BASH_H" != true ]; then
  $RUN_ROOT chmod "$permission" "$file"
fi
