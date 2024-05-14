#!/bin/bash

SCRIPT_NAME="node-app_info"
SCRIPT_DESCRIPTION="Node.js info command."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="http://node.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_O" != true ]; then
  if command -v node &>/dev/null; then
    info node
  else
    echo -e "${TEXT_DANGER}ERROR: Node.js is not installed${TEXT_DEFAULT}"
  fi
fi
