# ---
# Install the main Windows fonts on the operating system.
# @see https://itsfoss.com/install-microsoft-fonts-ubuntu/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y ttf-mscorefonts-installer
