#!/bin/bash

SCRIPT_NAME="text_capitalize"
SCRIPT_DESCRIPTION="Capitalize the first letter of text."
SCRIPT_DESCRIPTION_ES="Capitalizar la primera letra del texto."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/"
SCRIPT_ARG=(text)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1" || ERROR_ARGUMENT_MISSING 0

# remove
if [ "$ARG_BASH_H" != true ]; then
  echo "$text" | sed 's/.*/\L&/; s/[a-z]*/\u&/'
fi
