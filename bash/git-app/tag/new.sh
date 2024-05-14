#!/bin/bash

SCRIPT_NAME="git-app_tag_new"
SCRIPT_DESCRIPTION="Add a tag in Git."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://git-scm.com/docs/git-add"
SCRIPT_ARG=(tag)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -lt 1 ] && echo -e "${TEXT_DANGER}ERROR: arguments are missing${TEXT_DEFAULT}" && exit 1

tag="$1"

# new
if [ "$ARG_BASH_O" != true ]; then
  git tag "$tag"
fi
