# ---
# CDRTools installation.
# @see https://codeberg.org/schilytools/schilytools
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y cdrtools
