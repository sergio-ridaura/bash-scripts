#!/bin/bash

SCRIPT_NAME="git-app_commit_new"
SCRIPT_DESCRIPTION="New a commit in Git."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://git-scm.com/docs/git-commit"
SCRIPT_ARG=(text)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
text="$1"

[ $# -eq 0 ] && text=$APP_DATE_CREATE

# new
if [ "$ARG_BASH_O" != true ]; then
  results=$(git commit -m "$text" 2>&1)
  if [ "$ARG_BASH_S" = true ]; then
    if [[ ! "$results" =~ "files changed" ]]; then
      echo -en "$TEXT_DANGER"
    fi
    echo -e "commit $text"
  fi
fi

echo -en "$TEXT_DEFAULT"
