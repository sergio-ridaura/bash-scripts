#!/bin/bash

LAYOUT_NAME="wget"
LAYOUT_APP="Wget"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.gnu.org/software/wget/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.gnu.org/software/wget/
- Repository          https://git.savannah.gnu.org/cgit/wget.git
- Wikipedia           https://en.wikipedia.org/wiki/Wget
- Stack Overflow      https://stackoverflow.com/questions/tagged/wget
- Linuxize            https://linuxize.com/tags/wget/"
}

# template
. "$(dirname "$0")/../template/links.sh"
