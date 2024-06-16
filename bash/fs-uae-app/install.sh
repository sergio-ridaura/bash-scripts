#!/bin/bash

LAYOUT_NAME="fs-uae"
LAYOUT_APP="FS-UAE"
LAYOUT_VERSION="24.06.16"
LAYOUT_SEE="https://fs-uae.net/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES curl
  echo 'deb http://download.opensuse.org/repositories/home:/FrodeSolheim:/stable/xUbuntu_22.04/ /' | $IS_ROOT tee /etc/apt/sources.list.d/home:FrodeSolheim:stable.list
  curl -fsSL https://download.opensuse.org/repositories/home:FrodeSolheim:stable/xUbuntu_22.04/Release.key | gpg --dearmor | $IS_ROOT tee /etc/apt/trusted.gpg.d/home_FrodeSolheim_stable.gpg >/dev/null
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES fs-uae fs-uae-launcher
}

# template
. "$(dirname "$0")/../template/install.sh"
