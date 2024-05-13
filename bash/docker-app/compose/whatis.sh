#!/bin/bash

LAYOUT_NAME="docker-compose"
LAYOUT_APP="Docker Compose"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/compose/"

LAYOUT_CODE() {
  echo "Docker Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application's services."
}

LAYOUT_CODE_ES() {
  echo "Docker Compose es una herramienta para definir y ejecutar aplicaciones Docker de contenedores múltiples. Con Compose, utiliza un archivo YAML para configurar los servicios de su aplicación".
}

# template
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
. "$DEV_PATH/bash/template/whatis.sh"
