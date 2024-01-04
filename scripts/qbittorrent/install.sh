# ---
# qBittorrent installation.
# @see https://www.qbittorrent.org/download
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y qbittorrent
