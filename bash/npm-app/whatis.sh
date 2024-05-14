#!/bin/bash

LAYOUT_NAME="npm"
LAYOUT_APP="Npm"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://docs.npmjs.com/"

LAYOUT_CODE() {
  echo "Npm is a package manager for Node.js, used to install, share, and manage software package dependencies in Node.js projects."
}

LAYOUT_CODE_ES() {
  echo "Npm es un administrador de paquetes para Node.js, que se utiliza para instalar, compartir y administrar dependencias de paquetes de software en proyectos de Node.js".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
