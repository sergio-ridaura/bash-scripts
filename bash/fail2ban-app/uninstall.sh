#!/bin/bash

LAYOUT_NAME="fail2ban"
LAYOUT_APP="Fail2Ban"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="http://www.fail2ban.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge fail2ban
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
