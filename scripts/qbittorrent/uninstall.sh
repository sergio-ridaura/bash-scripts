# ---
# qBittorrent uninstall.
# @see https://www.qbittorrent.org/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge qbittorrent
