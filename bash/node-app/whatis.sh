#!/bin/bash

SCRIPT_NAME="node-app_watis"
SCRIPT_DESCRIPTION="Get description of the Node.js application."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="http://www.node.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_O" != true ]; then
  echo "Node.js is a JavaScript runtime environment that enables running JavaScript code outside of a browser. It is commonly used for server-side application development."
fi
