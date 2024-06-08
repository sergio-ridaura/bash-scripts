#!/bin/bash

LAYOUT_NAME="telegram"
LAYOUT_APP="Telegram"
LAYOUT_VERSION="24.06.08"
LAYOUT_SEE="https://telegram.org/"

LAYOUT_CODE() {
  echo "\
- Official website    https://telegram.org/
- Repository          https://github.com/telegramdesktop/tdesktop
- Wikipedia           https://en.wikipedia.org/wiki/Telegram_(software)"
}

# template
. "$(dirname "$0")/../template/links.sh"
