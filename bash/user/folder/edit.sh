#!/bin/bash

SCRIPT_NAME="user_folder_edit"
SCRIPT_DESCRIPTION="Change user of folder and content."
SCRIPT_DESCRIPTION_ES="Change folder user and content."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/linux-chown-command/"
SCRIPT_ARG=(folder user)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -d "$folder" ] && ERROR_NOT_FOUND "$folder"

[ $# -ge 2 ] && name="$2" || name=$USER
id "$name" &>/dev/null || ERROR_NOT_FOUND "$user"

# edit
if [ "$ARG_BASH_H" != true ]; then
  $RUN_ROOT chown -R "$name" "$folder"
fi
