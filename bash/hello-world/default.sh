#!/bin/bash

SCRIPT_NAME="hello-world_default"
SCRIPT_DESCRIPTION="Basic example of a shell script written in Bash."
SCRIPT_DESCRIPTION_ES="Ejemplo básico de un script de shell escrito en Bash."
SCRIPT_VERSION="24.05.14"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# hello
if [ "$ARG_BASH_H" != true ]; then
  echo "Hello World! $1"
fi
