#!/bin/bash

SCRIPT_NAME="folder_permissions"
SCRIPT_DESCRIPTION="Change folder permissions."
SCRIPT_DESCRIPTION_ES="Cambiar permisos de carpeta."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.tomshardware.com/how-to/change-file-directory-permissions-linux"
SCRIPT_ARG=(folder permission)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1" || ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && permission="$2" || ERROR_ARGUMENT_MISSING 1
[ ! -d "$folder" ] && ERROR_NOT_FOUND "$folder"

# permissions
if [ "$ARG_BASH_H" != true ]; then
  $RUN_ROOT chmod -R "$permission" "$folder"
fi
