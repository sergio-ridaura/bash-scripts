#!/bin/bash

SCRIPT_NAME="ubuntu_relevant"
SCRIPT_DESCRIPTION="Relevant system information in Ubuntu."
SCRIPT_DESCRIPTION_ES="Información relevante del sistema en Ubuntu."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://linuxhandbook.com/uname/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# relevan
if [ "$ARG_BASH_H" != true ]; then
  uname -a
fi
