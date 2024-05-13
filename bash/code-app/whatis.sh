#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  echo "Visual Studio Code is an integrated development environment (IDE) that is mainly used to program and edit code. It is developed by Microsoft and is a very popular tool among software developers due to their flexibility, efficiency and wide range of characteristics."
}

LAYOUT_CODE_ES() {
  echo "Visual Studio Code es un entorno de desarrollo integrado (IDE) que se utiliza principalmente para programar y editar código. Está desarrollado por Microsoft y es una herramienta muy popular entre los desarrolladores de software debido a su flexibilidad, eficiencia y amplia gama de características".
}

. "$(dirname "$0")/../template/whatis.sh"
