#!/bin/bash

SCRIPT_NAME="file_light"
SCRIPT_DESCRIPTION="Lists the smallest files in the indicated folder."
SCRIPT_DESCRIPTION_ES="Enumera los archivos más pequeños en la carpeta indicada."
SCRIPT_VERSION="24.05.15"
SCRIPT_SEE="https://www.howtogeek.com/771399/how-to-use-the-find-command-in-linux/"
SCRIPT_ARG=(folder number)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1"
[ "$folder" == "" ] && folder="${1:-.}"

[ $# -ge 2 ] && number="$2"
[ "$number" == "" ] && number="${2:-10}"

# find
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT find $folder -type f -exec du -Sh {} + | sort -h | head -n $number
fi
