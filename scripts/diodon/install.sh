# ---
# Diodon installation.
# @see https://launchpad.net/diodon
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y diodon
