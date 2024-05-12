#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://code.visualstudio.com/
- Documentation       https://code.visualstudio.com/docs
- Repository          https://github.com/microsoft/vscode
- Wikipedia           https://en.wikipedia.org/wiki/Visual_Studio_Code
- Stack Overflow      https://stackoverflow.com/questions/tagged/vscode"
}

. "$(dirname "$0")/../template/links.sh"
