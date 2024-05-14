#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  echo "Docker is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers."
}

LAYOUT_CODE_ES() {
  echo "Docker es un conjunto de productos de plataforma como servicio (PaaS) que utilizan virtualización a nivel de sistema operativo para entregar software en paquetes llamados contenedores".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
