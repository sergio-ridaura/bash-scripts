#!/bin/bash

LAYOUT_NAME="blender"
LAYOUT_APP="Blender"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.blender.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge blender
}

. "$(dirname "$0")/../template/uninstall.sh"
