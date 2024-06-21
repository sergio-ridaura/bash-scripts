#!/bin/bash

SCRIPT_NAME="whdload_get"
SCRIPT_DESCRIPTION="Get ROM Collection from WHDownLoad."
SCRIPT_DESCRIPTION_ES="Obtener colección de ROMS de WHDownLoad."
SCRIPT_VERSION="24.06.18"
SCRIPT_SEE="https://www.whdownload.com/"
SCRIPT_ARG=(type update)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && type="$1" || type="all"
list=(0 q w e r t y u i o p a s d f g h j k l z x c v b n m all)
[[ " ${list[@]} " =~ " ${type} " ]] || ERROR_NOT_FOUND "$type"

[ $# -ge 2 ] && update="$2"
[ "$update" == "true" ] && update="" || update="-nc"

# get
if [ "$ARG_BASH_H" != true ]; then
  if [ "$type" == "all" ]; then
    unset "list[27]"
    for t in "${list[@]}"; do
      wget -r -np -nH --cut-dirs=1 -A "*.lha" $update "https://www.whdownload.com/games/${t^^}/"
    done
  else
    wget -r -np -nH --cut-dirs=1 -A "*.lha" $update "https://www.whdownload.com/games/${type^^}/"
  fi
fi
