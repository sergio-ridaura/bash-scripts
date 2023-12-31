# ---
# Allows non-free tools in the system.
# @see https://askubuntu.com/questions/56446/how-do-i-install-the-ubuntu-restricted-extras-package
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT add-apt-repository -y multiverse
$IS_ROOT apt update
$IS_ROOT apt install -y ubuntu-restricted-extras
