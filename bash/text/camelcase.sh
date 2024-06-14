#!/bin/bash

SCRIPT_NAME="text_camelcase"
SCRIPT_DESCRIPTION="Convert text to CamelCase."
SCRIPT_DESCRIPTION_ES="Convertir el texto a CamelCase."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/"
SCRIPT_ARG=(text)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1" || ERROR_ARGUMENT_MISSING 0

# edit
if [ "$ARG_BASH_H" != true ]; then
  echo "$text" | sed -e 's/[^A-Za-z0-9]/ /g' -e 's/\([a-z]\)\([A-Z]\)/\1 \2/g' -e 's/^[[:lower:]]/\U&/' -e 's/ \([[:lower:]]\)/ \U\1/g' -e 's/ //g'
fi
