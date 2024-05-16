#!/bin/bash

LAYOUT_NAME="fail2ban-client"
LAYOUT_APP="Fail2Ban"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="http://www.fail2ban.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Fail2Ban v\K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
