#!/bin/bash

LAYOUT_NAME="gh"
LAYOUT_APP="GitHub CLI"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://cli.github.com/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES curl
  type -p curl >/dev/null || ($IS_ROOT apt update && $IS_ROOT apt install curl $ARG_YES)
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | $IS_ROOT dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && $IS_ROOT chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | $IS_ROOT tee /etc/apt/sources.list.d/github-cli.list >/dev/null && $IS_ROOT apt update && $IS_ROOT apt install gh $ARG_YES
}

# template
. "$(dirname "$0")/../template/install.sh"
