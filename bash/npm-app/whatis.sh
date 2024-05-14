#!/bin/bash

SCRIPT_NAME="npm-app_watis"
SCRIPT_DESCRIPTION="Get description of the Npm application."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://docs.npmjs.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_O" != true ]; then
  echo "Npm is a package manager for Node.js, used to install, share, and manage software package dependencies in Node.js projects."
fi
