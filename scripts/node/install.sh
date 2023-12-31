# ---
# Node.js installation.
# @see https://nodejs.org/en/download
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt-get install -y nodejs
source "$(dirname "$0")/../npm/install.sh"
source "update.sh"
