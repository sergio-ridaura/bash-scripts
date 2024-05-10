#!/bin/bash

SCRIPT_NAME="debian_version"
SCRIPT_DESCRIPTION="Debian operating system version."
SCRIPT_DESCRIPTION_ES="Versión del sistema operativo Debian."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.computerhope.com/unix/lsb_release.htm"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  cat /etc/debian_version
fi
