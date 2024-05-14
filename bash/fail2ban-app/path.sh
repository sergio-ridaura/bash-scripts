#!/bin/bash

LAYOUT_NAME="fail2ban"
LAYOUT_APP="Fail2Ban"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="http://www.fail2ban.org/"

LAYOUT_CODE() {
  which fail2ban-client
}

# template
. "$(dirname "$0")/../template/path.sh"
