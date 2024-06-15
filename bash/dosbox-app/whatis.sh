#!/bin/bash

LAYOUT_NAME="dosbox"
LAYOUT_APP="DOSBox"
LAYOUT_VERSION="24.06.15"
LAYOUT_SEE="https://www.dosbox.com/"

LAYOUT_CODE() {
  echo "DOSBox is a free and open-source emulator which runs software for MS-DOS compatible disk operating systems—primarily video games."
}

LAYOUT_CODE_ES() {
  echo "DOSBox es un emulador que recrea un entorno similar al sistema MS-DOS con el objetivo de poder ejecutar programas y videojuegos originalmente escritos para dicho sistema en computadoras más modernas o en diferentes arquitecturas (como Power PC). "
}

# template
. "$(dirname "$0")/../template/whatis.sh"
