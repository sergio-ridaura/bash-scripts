#!/bin/bash

LAYOUT_NAME="fdisk"
LAYOUT_APP="fdisk"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://linux.die.net/man/8/fdisk"

LAYOUT_CODE() {
  echo "fdisk is a software that is available for various operating systems, which allows you to logically divide a hard drive, this new space being called a partition."
}

LAYOUT_CODE_ES() {
  echo "fdisk es un software que está disponible para varios sistemas operativos, el cual permite dividir en forma lógica un disco duro, siendo denominado este nuevo espacio como partición."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
