#!/bin/bash

SCRIPT_NAME="user_connect_list"
SCRIPT_DESCRIPTION="List the users connected to the computer."
SCRIPT_DESCRIPTION_ES="Enumere a los usuarios conectados a la computadora."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxhandbook.com/linux-list-users/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# list
if [ "$ARG_BASH_H" != true ]; then
  users
fi
