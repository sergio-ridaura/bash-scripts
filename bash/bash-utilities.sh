#!/bin/bash

if [[ "$0" == *"/bash-utilities.sh" ]]; then
  SCRIPT_NAME="bash-utilities"
  SCRIPT_DESCRIPTION="Tool to manage my collection of Bash scripts."
  SCRIPT_DESCRIPTION_ES="Herramienta para gestionar mi colección de scripts de Bash."
  SCRIPT_VERSION="24.05.10"
  SCRIPT_SEE="https://github.com/sergio-ridaura/bash-scripts"
fi

# global variables
CURRENT_PATH="$(pwd)"
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_PATH="${DEV_PATH}/bash"

ARG_BASH_C=false
ARG_BASH_H=false
ARG_BASH_M=false
ARG_BASH_N=false
ARG_BASH_Q=false
ARG_BASH_S=false
ARG_BASH_U=false
ARG_BASH_V=false
ARG_BASH_Y=false

RUN_ROOT=""

# colors
TEXT_DEFAULT="\e[0m"

TEXT_BLUE="\e[1;34m"
TEXT_CYAN="\e[1;36m"
TEXT_GREEN="\e[1;32m"
TEXT_MAGENTA="\e[1;35m"
TEXT_ORANGE="\e[38;5;214m"
TEXT_RED="\e[1;31m"
TEXT_YELLOW="\e[1;33m"
TEXT_GRAY="\e[38;5;240m"

TEXT_PRIMARY="${TEXT_MAGENTA}"
TEXT_SECONDARY="${TEXT_CYAN}"
TEXT_SUCCESS="${TEXT_GREEN}"
TEXT_DANGER="${TEXT_RED}"
TEXT_WARNING="${TEXT_ORANGE}"
TEXT_INFO="${TEXT_BLUE}"
TEXT_MUTED="${TEXT_GRAY}"

TEXT_BOLD="\e[1m"
TEXT_UNDERLINE="\e[4m"
TEXT_DIM="\e[2m"

# flags
for arg in "$@"; do
  case "$arg" in
  "-c" | "--clear")
    ARG_BASH_C=true
    clear
    ;;
  "-h" | "--help")
    ARG_BASH_H=true
    ;;
  "-m" | "--mute")
    ARG_BASH_M=true
    ;;
  "-n" | "--not")
    ARG_BASH_N=true
    ARG_YES="-n"
    ;;
  "-q" | "--quiet")
    ARG_BASH_Q=true
    ARG_BASH_M=true
    ;;
  "-s" | "--short")
    ARG_BASH_S=true
    ;;
  "-u" | "--sudo")
    ARG_BASH_U=true
    RUN_ROOT="sudo"
    ;;
  "-v" | "--version")
    ARG_BASH_V=true
    ARG_BASH_M=true
    ARG_BASH_H=true
    echo "${SCRIPT_VERSION}"
    ;;
  "-y" | "--yes")
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

# info
if [[ "${ARG_BASH_M}" == false ]]; then
  echo -e "${TEXT_INFO}---"
  echo -e "${TEXT_PRIMARY}${SCRIPT_NAME}"
  echo -e "${TEXT_INFO}"

  echo "@vers ${SCRIPT_VERSION}"
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "@desc ${SCRIPT_DESCRIPTION_ES}"
  else
    echo "@desc ${SCRIPT_DESCRIPTION}"
  fi
  [[ -n "${SCRIPT_SEE}" ]] && echo "@see ${SCRIPT_SEE}"
  [[ -n "${SCRIPT_NOTE}" ]] && echo "@note ${SCRIPT_NOTE}"

  for element in "${SCRIPT_ARG[@]}"; do
    echo "@arg ${element}"
  done

  echo -e "${TEXT_SECONDARY}"

  if [ -n "${SCRIPT_AUTHOR}" ]; then
    echo -e "${SCRIPT_AUTHOR}"
  else
    echo "© 2024 Sergio Ridaura. https://github.com/sergio-ridaura"
  fi

  echo -e "${TEXT_INFO}---${TEXT_DEFAULT}"
fi

# errors
ERROR_ARGUMENT_MISSING() {
  echo -e "${TEXT_DANGER}ERROR: \"${SCRIPT_ARG[$1]}\" argument is missing${TEXT_DEFAULT}" && exit 1
}

ERROR_NOT_FOUND() {
  echo -e "${TEXT_DANGER}ERROR: \"${1}\" not found${TEXT_DEFAULT}" && exit 1
}

unset "element" "arg"
