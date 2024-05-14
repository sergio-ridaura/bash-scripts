#!/bin/bash

LAYOUT_NAME="nginx"
LAYOUT_APP="Nginx"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nginx.org/"

LAYOUT_CODE() {
  echo "\
- Official website    http://nginx.org/
- Repository          https://hg.nginx.org/nginx
- Wikipedia           https://en.wikipedia.org/wiki/Nginx
- Stack Overflow      https://stackoverflow.com/questions/tagged/nginx"
}

# template
. "$(dirname "$0")/../template/links.sh"
