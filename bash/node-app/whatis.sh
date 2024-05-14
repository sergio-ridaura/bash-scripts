#!/bin/bash

LAYOUT_NAME="node"
LAYOUT_APP="Node.js"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://node.org/"

LAYOUT_CODE() {
  echo "Node.js is a JavaScript runtime environment that enables running JavaScript code outside of a browser. It is commonly used for server-side application development."
}

LAYOUT_CODE_ES() {
  echo "Node.js es un entorno de ejecución de JavaScript que permite ejecutar código JavaScript fuera de un navegador. Se usa comúnmente para el desarrollo de aplicaciones del lado del servidor".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
