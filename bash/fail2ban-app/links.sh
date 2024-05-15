#!/bin/bash

LAYOUT_NAME="fail2ban-client"
LAYOUT_APP="Fail2Ban"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="http://www.fail2ban.org/"

LAYOUT_CODE() {
  echo "\
- Official website    http://www.fail2ban.org/
- Repository          https://github.com/fail2ban/fail2ban
- Wikipedia           https://en.wikipedia.org/wiki/Fail2ban
- Stack Overflow      https://stackoverflow.com/questions/tagged/fail2ban"
}

# template
. "$(dirname "$0")/../template/help.sh"
