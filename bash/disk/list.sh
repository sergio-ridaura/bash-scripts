#!/bin/bash

SCRIPT_NAME="disk_list"
SCRIPT_DESCRIPTION="Lists connected hard drives in the system."
SCRIPT_DESCRIPTION_ES="Enumera los discos duros conectados en el sistema."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://linuxize.com/post/fdisk-command-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# list
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_S" == true ]; then
    output=$($IS_ROOT fdisk -l)
    print_line=false

    while IFS= read -r line; do
      if [[ $line == *'Disk model'* ]]; then
        echo "$prev_line"
        echo -e "$line\n"
      fi
      prev_line="$line"
    done <<<"$output"

  else
    $IS_ROOT fdisk -l
  fi
fi
