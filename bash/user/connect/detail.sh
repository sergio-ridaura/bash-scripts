#!/bin/bash

SCRIPT_NAME="user_connect_detail"
SCRIPT_DESCRIPTION="Detailed list of users connected to the computer."
SCRIPT_DESCRIPTION_ES="Lista detallada de usuarios conectados a la computadora."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxize.com/post/w-command-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# detail
if [ "$ARG_BASH_H" != true ]; then
  w
fi
