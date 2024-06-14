#!/bin/bash

SCRIPT_NAME="file_text_new"
SCRIPT_DESCRIPTION="Create a text file with content."
SCRIPT_DESCRIPTION_ES="Crear un archivo de texto con contenido."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxhandbook.com/create-file-linux/"
SCRIPT_ARG=(text file)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1" || ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && file="$2" || ERROR_ARGUMENT_MISSING 1

# new
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT echo $text > $file
fi
