#!/bin/bash

LAYOUT_NAME="fdisk"
LAYOUT_APP="fdisk"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://linux.die.net/man/8/fdisk"

LAYOUT_CODE() {
  echo "\
- Linuxize            https://linuxize.com/post/fdisk-command-in-linux/"
}

# template
. "$(dirname "$0")/../template/links.sh"
