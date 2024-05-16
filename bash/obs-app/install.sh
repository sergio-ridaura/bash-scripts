#!/bin/bash

LAYOUT_NAME="obs"
LAYOUT_APP="OBS Studio"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://obsproject.com/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES software-properties-common
  $IS_ROOT add-apt-repository ppa:obsproject/obs-studio
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES obs-studio
}

# template
. "$(dirname "$0")/../template/install.sh"
