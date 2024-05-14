#!/bin/bash

SCRIPT_NAME="git-app_config_local_user_add"
SCRIPT_DESCRIPTION="Git user local configuration."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup"
SCRIPT_ARG=(user email)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
user=$GIT_USER_NAME
[ $# -ge 1 ] && user="$1"

email=$GIT_USER_EMAIL
[ $# -ge 2 ] && email="$2"
[ "$email" == "" ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

# configuration
if [ "$ARG_BASH_H" != true ]; then
  git config user.name $user
  git config user.email $email
fi
