#!/bin/bash

SCRIPT_NAME="git-app_tag_new"
SCRIPT_DESCRIPTION="Add a tag in Git."
SCRIPT_DESCRIPTION_ES="Agregar una etiqueta en Git."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://git-scm.com/docs/git-add"
SCRIPT_ARG=(tag)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && tag="$1"
[ "$tag" == "" ] && ERROR_ARGUMENT_MISSING 0

# new
if [ "$ARG_BASH_H" != true ]; then
  git tag "$tag"
fi
