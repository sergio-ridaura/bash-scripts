#!/bin/bash

SCRIPT_NAME="ubuntu_links"
SCRIPT_DESCRIPTION="List of help links for Ubuntu."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para Ubuntu."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://www.ubuntu.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_I" != true ]; then
  echo "\
- Official website    https://www.ubuntu.com/
- Blog                https://ubuntu.com/blog
- Repository          https://code.launchpad.net/ubuntu
- Wikipedia           https://en.wikipedia.org/wiki/Ubuntu
- Stack Overflow      https://stackoverflow.com/questions/tagged/ubuntu
- Linuxize            https://linuxize.com/"
fi
