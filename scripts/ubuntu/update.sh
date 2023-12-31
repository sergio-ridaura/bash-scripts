# ---
# Updating and cleaning the Operating System.
# @see https://askubuntu.com/questions/196768/how-to-install-updates-via-command-line
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# update
$IS_ROOT apt update
$IS_ROOT apt upgrade -y
$IS_ROOT apt autoremove -y
$IS_ROOT apt autoclean -y
