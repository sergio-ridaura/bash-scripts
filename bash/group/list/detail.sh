#!/bin/bash

SCRIPT_NAME="user_list_detail"
SCRIPT_DESCRIPTION="List with details of system groups."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/how-to-list-groups-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# remove
if [ "$ARG_BASH_O" != true ]; then
  cat /etc/passwd
fi
