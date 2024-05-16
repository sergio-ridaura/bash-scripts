#!/bin/bash

SCRIPT_NAME="git-app_commit_new"
SCRIPT_DESCRIPTION="New a commit in Git."
SCRIPT_DESCRIPTION_ES="Nuevo commit en Git."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://git-scm.com/docs/git-commit"
SCRIPT_ARG=(text)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1"
[ "$text" == "" ] && ERROR_ARGUMENT_MISSING 0

# new
if [ "$ARG_BASH_H" != true ]; then
  git commit -m "$text"
fi
