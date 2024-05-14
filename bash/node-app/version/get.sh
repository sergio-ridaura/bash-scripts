#!/bin/bash

SCRIPT_NAME="node-app_version_get"
SCRIPT_DESCRIPTION="Get Node.js version."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://nodejs.org/"

# tools
. "$(dirname "$0")/../../sh-utilities.sh"

# update
if [ "$ARG_BASH_H" != true ]; then
  node --version
fi
