#!/bin/bash

SCRIPT_NAME="file_text_add"
SCRIPT_DESCRIPTION="Add content to a text file."
SCRIPT_DESCRIPTION_ES="Agregar contenido a un archivo de texto."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.howtogeek.com/append-text-to-files-on-linux/"
SCRIPT_ARG=(text file)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1" || ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && file="$2" || ERROR_ARGUMENT_MISSING 1

# add
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT echo $text >> $file
fi
