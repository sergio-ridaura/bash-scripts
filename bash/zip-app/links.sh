#!/bin/bash

LAYOUT_NAME="zip"
LAYOUT_APP="Zip"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

LAYOUT_CODE() {
  echo "\
- Wikipedia           https://en.wikipedia.org/wiki/Zip_(file_format)
- Stack Overflow      https://stackoverflow.com/questions/tagged/zip
- Linuxize            https://linuxize.com/tags/zip/"
}

. "$(dirname "$0")/../template/links.sh"
