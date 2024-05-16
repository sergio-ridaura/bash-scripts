#!/bin/bash

LAYOUT_NAME="fail2ban-client"
LAYOUT_APP="Fail2Ban"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="http://www.fail2ban.org/"

# template
. "$(dirname "$0")/../template/help.sh"

LAYOUT_CODE() {
  echo "La aplicación Fail2Ban ayuda a prevenir intrusos en el sistema, penalizando o bloqueando la conexión remota que intente acceder por fuerza bruta."
}

LAYOUT_CODE_ES() {
  echo "Fail2Ban application helps the prevention of intruders in the system, penalizing or blocking remote connection that attempt by brute force access."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
