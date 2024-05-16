#!/bin/bash

SCRIPT_NAME="file_text_search"
SCRIPT_DESCRIPTION="Search and display matches in a text file."
SCRIPT_DESCRIPTION_ES="Buscar y mostrar coincidencias en un archivo de texto."
SCRIPT_VERSION="24.05.15"
SCRIPT_SEE="https://www.howtogeek.com/496056/how-to-use-the-grep-command-on-linux/"
SCRIPT_ARG=(text file)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1"
[ "$text" == "" ] && ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && file="$2"
[ "$file" == "" ] && ERROR_ARGUMENT_MISSING 1

# search
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT grep $text $file
fi
