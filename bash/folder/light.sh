#!/bin/bash

SCRIPT_NAME="folder_light"
SCRIPT_DESCRIPTION="Lists the smallest folders in the indicated folder."
SCRIPT_DESCRIPTION_ES="Enumera las carpetas más pequeños en la carpeta indicada."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxconfig.org/how-to-find-largest-directories-in-linux"
SCRIPT_ARG=(folder number)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1" || folder="."
[ $# -ge 2 ] && number="$2" || number="10"
[ ! -d "$folder" ] && ERROR_NOT_FOUND "$folder"

# find
if [ "$ARG_BASH_H" != true ]; then
  $RUN_ROOT find "$folder" -mindepth 1 -maxdepth 1 -type d -exec du -sh {} + 2>/dev/null | sort -h | head -n "$number"
fi
