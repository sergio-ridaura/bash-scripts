# ---
# Docker Compose installation.
# @see https://docs.docker.com/compose/install/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT curl -L https://github.com/docker/compose/releases/download/v2.4.1/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
$IS_ROOT chmod +x /usr/local/bin/docker-compose
