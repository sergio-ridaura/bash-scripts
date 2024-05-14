#!/bin/bash

LAYOUT_NAME="nginx"
LAYOUT_APP="Nginx"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nginx.org/"

LAYOUT_CODE() {
  echo "Nginx is a web server that can also be used as a reverse proxy, load balancer, mail proxy, and HTTP cache."
}

LAYOUT_CODE_ES() {
  echo "Nginx es un servidor web que también se puede utilizar como proxy inverso, equilibrador de carga, proxy de correo y caché HTTP".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
