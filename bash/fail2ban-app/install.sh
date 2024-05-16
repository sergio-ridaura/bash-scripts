#!/bin/bash

LAYOUT_NAME="fail2ban-client"
LAYOUT_APP="Fail2Ban"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="http://www.fail2ban.org/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES fail2ban
}

# template
. "$(dirname "$0")/../template/install.sh"
