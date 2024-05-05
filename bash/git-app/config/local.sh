SCRIPT_NAME="git-app_config_local_user_add"
SCRIPT_DESCRIPTION="Git user local configuration."
SCRIPT_DESCRIPTION_ES="Configuración local del usuario de Git."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup"
SCRIPT_ARG=("user - string" "email - string")

. "$(dirname "$0")/../../bash-utilities.sh"

user=$GIT_USER_NAME
[ $# -ge 1 ] && user="$1"

email=$GIT_USER_EMAIL
[ $# -ge 2 ] && email="$2"

git config user.name $user
git config user.email $email
