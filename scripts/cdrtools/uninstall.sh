# ---
# CDRTools uninstall.
# @see https://codeberg.org/schilytools/schilytools
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge cdrtools
