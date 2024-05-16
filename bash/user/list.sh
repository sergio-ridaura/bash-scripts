#!/bin/bash

SCRIPT_NAME="user_list"
SCRIPT_DESCRIPTION="List the users registered in the system."
SCRIPT_DESCRIPTION_ES="Enumere a los usuarios registrados en el sistema."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://phoenixnap.com/kb/whoami-linux"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# list
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_S" == true ]; then
    cut -d: -f1 /etc/passwd | tr '\n' ' '
    echo
  else
    cut -d: -f1 /etc/passwd
  fi
fi
