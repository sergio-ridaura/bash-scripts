# ---
# Vim installation.
# @see https://www.vim.org/download.php
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y vim
