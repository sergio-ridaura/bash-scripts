# ---
# Diodon uninstall.
# @see https://launchpad.net/diodon
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge diodon
