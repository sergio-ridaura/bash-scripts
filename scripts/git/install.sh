# ---
# Git installation.
# @see https://git-scm.com/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y git
