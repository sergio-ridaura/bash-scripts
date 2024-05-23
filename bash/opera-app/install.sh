#!/bin/bash

LAYOUT_NAME="opera"
LAYOUT_APP="Opera"
LAYOUT_VERSION="24.05.23"
LAYOUT_SEE="https://www.opera.com/"

LAYOUT_CODE () {
  $IS_ROOT apt install $ARG_YES wget
  wget https://download3.operacdn.com/pub/opera/desktop/90.0.4480.48/linux/opera-stable_90.0.4480.48_amd64.deb
  $IS_ROOT dpkg -i opera-stable_90.0.4480.48_amd64.deb
  rm opera-stable_90.0.4480.48_amd64.deb
  $IS_ROOT apt-get $ARG_YES install -f
}

# template
. "$(dirname "$0")/../template/install.sh"
