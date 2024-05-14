#!/bin/bash

LAYOUT_NAME="ssh"
LAYOUT_APP="SSH"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.openssh.com/"

LAYOUT_CODE() {
  echo "OpenSSH is a free and open source implementation of the Secure Shell (SSH) protocol. SSH is a secure networking protocol that allows remote access to computer systems and secure data transfer. OpenSSH provides tools and services to establish encrypted and authenticated connections between computers on a network."
}

LAYOUT_CODE_ES() {
  echo "OpenSSH es una implementación gratuita y de código abierto del protocolo Secure Shell (SSH). SSH es un protocolo de red seguro que permite el acceso remoto a sistemas informáticos y la transferencia segura de datos. OpenSSH proporciona herramientas y servicios para establecer conexiones cifradas y autenticadas entre computadoras en una red."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
