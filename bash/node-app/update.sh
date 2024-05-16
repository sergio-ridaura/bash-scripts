#!/bin/bash

SCRIPT_NAME="node-app_update"
SCRIPT_DESCRIPTION="Update Node.js with npm and n."
SCRIPT_DESCRIPTION_ES="Actualice Node.js con npm y n."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://www.npmjs.com/package/n"
SCRIPT_ARG=(version)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && version="$1"
[ "$version" == "" ] && version="lts"

# install
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT npm install -g n
  $IS_ROOT n $version
fi
