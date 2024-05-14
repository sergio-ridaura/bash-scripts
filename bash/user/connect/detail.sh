#!/bin/bash

SCRIPT_NAME="user_connect_detail"
SCRIPT_DESCRIPTION="Detailed list of users connected to the computer."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/w-command-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  w
fi
