#!/bin/bash

SCRIPT_NAME="vscode-app_watis"
SCRIPT_DESCRIPTION="Get description of the Visual Studio Code application."
SCRIPT_DESCRIPTION_ES="Obtener descripción de la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Visual Studio Code es un entorno de desarrollo integrado (IDE) que se utiliza principalmente para programar y editar código. Está desarrollado por Microsoft y es una herramienta muy popular entre los desarrolladores de software debido a su flexibilidad, eficiencia y amplia gama de características".
  else
    echo "Visual Studio Code is an integrated development environment (IDE) that is mainly used to program and edit code. It is developed by Microsoft and is a very popular tool among software developers due to their flexibility, efficiency and wide range of characteristics."
  fi
fi
