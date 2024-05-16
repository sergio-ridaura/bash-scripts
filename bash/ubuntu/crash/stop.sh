#!/bin/bash

SCRIPT_NAME="ubuntu_crash_stop"
SCRIPT_DESCRIPTION="Clear error logs and stop logging in Ubuntu."
SCRIPT_DESCRIPTION_ES="Borrar registros de errores y detiene el registro en Ubuntu."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://askubuntu.com/questions/93457/how-do-i-enable-or-disable-apport"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# stop
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/ubuntu/crash/clean.sh" "-m"
  $IS_ROOT cp /etc/default/apport /etc/default/apport.old
  $IS_ROOT sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
fi
