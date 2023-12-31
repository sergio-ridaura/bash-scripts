# ---
# Microsoft Edge installation.
# @see https://www.microsoft.com/en-us/edge/download
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install software-properties-common apt-transport-https curl ca-certificates -y
curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | $IS_ROOT gpg --dearmor | $IS_ROOT tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | $IS_ROOT tee /etc/apt/sources.list.d/microsoft-edge.list
$IS_ROOT apt update
$IS_ROOT apt install microsoft-edge-stable
