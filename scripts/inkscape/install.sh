# ---
# Inkscape installation.
# @see https://inkscape.org/release/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y inkscape
