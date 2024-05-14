#!/bin/bash

SCRIPT_NAME="node-app_version_install"
SCRIPT_DESCRIPTION="Install Node.js version."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.npmjs.com/package/n"
SCRIPT_ARG=(version)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
version="lts"
[ $# -ge 1 ] && version="$1"

# install
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT npm install -g n
  $IS_ROOT n $version
fi
