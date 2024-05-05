#!/bin/bash

SCRIPT_NAME="year_get"
SCRIPT_DESCRIPTION="Year of your computer time zone."
SCRIPT_DESCRIPTION_ES="Año de la zona horaria de tu computadora."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://linuxize.com/post/how-to-set-or-change-timezone-in-linux/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# get
if [ "$ARG_BASH_I" != true ]; then
  echo $(date +%Y)
fi
