# ---
SCRIPT_NAME="npm-app_watis"
SCRIPT_DESCRIPTION="Get description of the Npm application."
SCRIPT_VERSION="24.3.30"
SCRIPT_SEE="https://docs.npmjs.com/"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# whatis
if [ "$ARG_BASH_O" != true ]; then
  echo "Npm is a package manager for Node.js, used to install, share, and manage software package dependencies in Node.js projects."
fi
