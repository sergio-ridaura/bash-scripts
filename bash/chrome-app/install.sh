#!/bin/bash

LAYOUT_NAME="google-chrome"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES wget
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  $IS_ROOT dpkg -i google-chrome-stable_current_amd64.deb
  $IS_ROOT apt-get $ARG_YES install -f
  rm google-chrome-stable_current_amd64.deb
}

# template
. "$(dirname "$0")/../template/install.sh"
