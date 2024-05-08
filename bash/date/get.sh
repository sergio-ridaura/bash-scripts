#!/bin/bash

SCRIPT_NAME="date_get"
SCRIPT_DESCRIPTION="Date and time of the computer time zone."
SCRIPT_DESCRIPTION_ES="Fecha y hora de la zona horaria del computadora."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://linuxize.com/post/how-to-set-or-change-timezone-in-linux/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# get
if [ "$ARG_BASH_I" != true ]; then
  date
fi
