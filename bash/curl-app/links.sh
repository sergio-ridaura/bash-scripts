#!/bin/bash

LAYOUT_NAME="curl"
LAYOUT_APP="cURL"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://curl.se/"

LAYOUT_CODE() {
  echo "\
- Official website    https://curl.se/
- Documentation       https://curl.se/docs/
- Repository          https://github.com/curl/curl
- Wikipedia           https://en.wikipedia.org/wiki/CURL
- Stack Overflow      https://stackoverflow.com/questions/tagged/culr
- Linuxize            https://linuxize.com/tags/curl/"
}

. "$(dirname "$0")/../template/links.sh"
