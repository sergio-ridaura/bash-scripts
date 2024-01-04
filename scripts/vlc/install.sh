# ---
# VLC installation.
# @see https://www.videolan.org/vlc/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y vlc
