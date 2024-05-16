#!/bin/bash

SCRIPT_NAME="user_connect_last"
SCRIPT_DESCRIPTION="List recently logged in users on the computer."
SCRIPT_DESCRIPTION_ES="Lista recientemente registrada en los usuarios en la computadora."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/last-command-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# last
if [ "$ARG_BASH_H" != true ]; then
  last
fi
