#!/bin/bash

SCRIPT_NAME="user_connect_error"
SCRIPT_DESCRIPTION="Lists computer login attempts."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.computerhope.com/unix/last.htm"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_O" != true ]; then
  $IS_ROOT lastb
fi
