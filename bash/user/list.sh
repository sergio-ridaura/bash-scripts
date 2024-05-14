#!/bin/bash

SCRIPT_NAME="user_list"
SCRIPT_DESCRIPTION="List the users registered in the system."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://phoenixnap.com/kb/whoami-linux"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# list
if [ "$ARG_BASH_O" != true ]; then
  whoami
fi
