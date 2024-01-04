# ---
# Gimp installation.
# @see https://www.gimp.org/downloads/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y gimp
