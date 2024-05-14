#!/bin/bash

SCRIPT_NAME="user_list_get"
SCRIPT_DESCRIPTION="List of system groups."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/how-to-list-groups-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# remove
if [ "$ARG_BASH_H" != true ]; then
  cat /etc/group | cut -d":" -f1
fi
