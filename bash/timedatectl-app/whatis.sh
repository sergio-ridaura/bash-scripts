#!/bin/bash

LAYOUT_NAME="timedatectl"
LAYOUT_APP="timedatectl"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://systemd.io"

LAYOUT_CODE() {
  echo "timedatectl may be used to query and change the system clock and its settings, and enable or disable time synchronization services. This application is part of GNU coreutils."
}

LAYOUT_CODE_ES() {
  echo "timedatectl se puede utilizar para consultar y cambiar el reloj del sistema y su configuración, y habilitar o deshabilitar los servicios de sincronización horaria. Esta aplicación es parte de GNU coreutils".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
