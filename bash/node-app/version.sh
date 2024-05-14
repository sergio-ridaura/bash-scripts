# ---
SCRIPT_NAME="node-app_version"
SCRIPT_DESCRIPTION="Get Node.js application version."
SCRIPT_VERSION="24.3.30"
SCRIPT_SEE="http://node.org/"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# version
if [ "$ARG_BASH_O" != true ]; then
  if command -v node &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(node --version 2>&1 | grep -oP 'v\K\d+\.\d+\.\d+')
    else
      node --version
    fi
  else
    echo -e "${TEXT_DANGER}ERROR: Node.js is not installed${TEXT_DEFAULT}"
  fi
fi
