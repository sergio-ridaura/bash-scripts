# ---
# Install the main macOS sources on the operating system.
# @see https://bookofzeus.com/customize-ubuntu/fonts/install-mac-os-fonts-in-ubuntu/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac/macfonts.zip
$IS_ROOT unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip
$IS_ROOT fc-cache -f -v
