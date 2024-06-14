#!/bin/bash

SCRIPT_NAME="user_folder_edit-group"
SCRIPT_DESCRIPTION="Change user and group of folder and content."
SCRIPT_DESCRIPTION_ES="Cambiar usuario y grupo de carpeta y contenido."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/linux-chown-command/"
SCRIPT_ARG=(folder user group)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -d "$folder" ] && ERROR_NOT_FOUND "$folder"

[ $# -ge 2 ] && name="$2" || name=$USER
id "$name" &>/dev/null || ERROR_NOT_FOUND "$name"

[ $# -ge 3 ] && group="$3" || ERROR_ARGUMENT_MISSING 2
getent group "$group" &>/dev/null || ERROR_NOT_FOUND "$group"

# edit
if [ "$ARG_BASH_H" != true ]; then
  $RUN_ROOT chown -R "$name:$group" "$folder"
fi
