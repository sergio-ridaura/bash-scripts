#!/bin/bash

SCRIPT_NAME="user_connect_last-user"
SCRIPT_DESCRIPTION="When was the last time the user logged in."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/last-command-in-linux/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
user=$USER
[ $# -ge 1 ] && user="$1"

# last
if [ "$ARG_BASH_O" != true ]; then
  last $user
fi
