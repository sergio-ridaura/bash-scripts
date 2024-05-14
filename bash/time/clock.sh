#!/bin/bash

SCRIPT_NAME="time_clock"
SCRIPT_DESCRIPTION="Shows updated time."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://stackoverflow.com/questions/2752346/listing-time-every-second-as-a-bash-script"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# clock
if [ "$ARG_BASH_H" != true ]; then
  while [ 1 ]; do
    echo -en "$(date +%T)\r"
    sleep 1
  done
fi
