# ---
SCRIPT_NAME="node-app_path"
SCRIPT_DESCRIPTION="Get Node.js application path."
SCRIPT_VERSION="24.3.30"
SCRIPT_SEE="http://node.org/"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# path
if [ "$ARG_BASH_O" != true ]; then
  if command -v node &>/dev/null; then
    which node
  else
    echo -e "${TEXT_DANGER}ERROR: Node.js is not installed${TEXT_DEFAULT}"
  fi
fi
