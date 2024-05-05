#!/bin/bash

if [[ "$0" == *"/bash-utilities.sh" ]]; then
  SCRIPT_NAME="bash-utilities"
  SCRIPT_DESCRIPTION="Tool to manage my collection of Bash scripts."
  SCRIPT_DESCRIPTION_ES="Herramienta para gestionar mi colección de scripts de Bash."
  SCRIPT_VERSION="24.05.05"
  SCRIPT_SEE="https://github.com/sergio-ridaura/bash-scripts"
fi

# global variables
CURRENT_PATH="$(pwd)"
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_PATH="${DEV_PATH}/bash"

ARG_BASH_C=false
ARG_BASH_I=false
ARG_BASH_M=false
ARG_BASH_N=false
ARG_BASH_Q=false
ARG_BASH_S=false
ARG_BASH_U=false
ARG_BASH_V=false
ARG_BASH_Y=false

RUN_ROOT=""

# flags
for arg in "$@"; do
  case "$arg" in
  "-c")
    ARG_BASH_C=true
    clear
    ;;
  "-i")
    ARG_BASH_I=true
    ;;
  "-m")
    ARG_BASH_M=true
    ;;
  "-n")
    ARG_BASH_N=true
    ARG_YES="-n"
    ;;
  "-q")
    ARG_BASH_Q=true
    ARG_BASH_M=true
    ;;
  "-s")
    ARG_BASH_S=true
    ;;
  "-u")
    ARG_BASH_U=true
    RUN_ROOT="sudo"
    ;;
  "-v")
    ARG_BASH_V=true
    ARG_BASH_M=true
    ARG_BASH_I=true
    echo "${SCRIPT_VERSION}"
    ;;
  "-y")
    ARG_BASH_Y=true
    ARG_YES="-y"
    ;;
  esac
done

# environment variables
if [ -e "${DEV_PATH}/.env.bash" ]; then
  . "${DEV_PATH}/.env.bash"
else
  . "${DEV_PATH}/.env.bash.default"
fi

# are you sudo?
if [[ "$(whoami)" != "root" && "${EUID}" -ne 0 ]]; then
  IS_ROOT="sudo"
fi

# clean arguments
new_args=()
for arg in "$@"; do
  if [[ ! "${arg}" =~ ^-[a-zA-Z]$ ]]; then
    new_args+=("${arg}")
  fi
done

set -- "${new_args[@]}"

unset "element" "arg" "new_args"
