#!/bin/bash

LAYOUT_NAME="google-chrome"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.google.com/chrome/
- Documentation       https://developer.chrome.com/docs/
- Wikipedia           https://en.wikipedia.org/wiki/Google_Chrome
- Stack Overflow      https://stackoverflow.com/questions/tagged/chrome"
}

. "$(dirname "$0")/../template/links.sh"
