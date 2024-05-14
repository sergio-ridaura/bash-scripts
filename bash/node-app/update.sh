# ---
SCRIPT_NAME="node-app_update"
SCRIPT_DESCRIPTION="Update Node.js with npm and n."
SCRIPT_VERSION="24.01.18"
SCRIPT_SEE="https://www.npmjs.com/package/n"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# update
if [ "$ARG_BASH_O" != true ]; then
  $IS_ROOT npm install -g n
  $IS_ROOT n lts
fi
