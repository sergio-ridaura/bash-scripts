#!/bin/bash

SCRIPT_NAME="folder_list_content"
SCRIPT_DESCRIPTION="List files in a folder."
SCRIPT_DESCRIPTION_ES="Lista los archivos de una carpeta."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxize.com/post/how-to-list-files-in-linux-using-the-ls-command/"
SCRIPT_ARG=(folder)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -d "$folder" ] && ERROR_NOT_FOUND "$folder"

# list
if [ "$ARG_BASH_H" != true ]; then
  ls "$folder"
fi
