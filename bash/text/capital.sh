#!/bin/bash

SCRIPT_NAME="text_capital"
SCRIPT_DESCRIPTION="Convert text to uppercase."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# edit
if [ "$ARG_BASH_O" != true ]; then
  echo "$1" | tr '[:lower:]' '[:upper:]'
fi
