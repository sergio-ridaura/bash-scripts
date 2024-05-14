#!/bin/bash

SCRIPT_NAME="user_connect_last"
SCRIPT_DESCRIPTION="List recently logged in users on the computer."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/last-command-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# last
if [ "$ARG_BASH_H" != true ]; then
  last
fi
