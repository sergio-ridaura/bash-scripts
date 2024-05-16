#!/bin/bash

SCRIPT_NAME="disk_mount"
SCRIPT_DESCRIPTION="Mount a hard drive connected to the system."
SCRIPT_DESCRIPTION_ES="Montar un disco duro conectado al sistema."
SCRIPT_VERSION="24.05.15"
SCRIPT_SEE="https://phoenixnap.com/kb/linux-mount-command"
SCRIPT_ARG=(disk)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && disk="$1"
[ "$disk" == "" ] && ERROR_ARGUMENT_MISSING 0

# mount
if [ "$ARG_BASH_H" != true ]; then
  if command -v info &>/dev/null; then
    $IS_ROOT mkdir -p /media/drive-$disk
    $IS_ROOT mount "/dev/${disk}" /media/drive-$disk/
    if [ "$ARG_BASH_S" == true ]; then
      echo "mount $disk"
    fi
  else
    ERROR_NOT_FOUND "fdisk"
  fi
fi
