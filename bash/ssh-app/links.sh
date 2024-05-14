#!/bin/bash

LAYOUT_NAME="ssh"
LAYOUT_APP="SSH"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.openssh.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.openssh.com/
- Repository          https://github.com/openssh/openssh-portable
- Wikipedia           https://en.wikipedia.org/wiki/OpenSSH
- Stack Overflow      https://stackoverflow.com/questions/tagged/ssh"
}

# template
. "$(dirname "$0")/../template/links.sh"
