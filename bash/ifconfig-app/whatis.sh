#!/bin/bash

LAYOUT_NAME="ifconfig"
LAYOUT_APP="ifconfig"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://sourceforge.net/projects/net-tools/"

LAYOUT_CODE() {
  echo "Ifconfig is a program available in several versions of the UNIX operating system, which allows you to configure or deploy numerous parameters of network -resident network interfaces in the nucleus, such as the IP address (dynamic or static), or the network mask."
}

LAYOUT_CODE_ES() {
  echo "ifconfig es un programa disponible en varias versiones del sistema operativo UNIX, que permite configurar o desplegar numerosos parámetros de las interfaces de red residentes en el núcleo, como la dirección IP (dinámica o estática), o la máscara de red."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
