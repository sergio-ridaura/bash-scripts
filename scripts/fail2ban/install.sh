# ---
# Fail2ban installation.
# @see http://www.fail2ban.org/wiki/index.php/Downloads
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y fail2ban
