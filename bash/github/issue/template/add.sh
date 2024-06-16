#!/bin/bash

SCRIPT_NAME="github_issue_template_add"
SCRIPT_DESCRIPTION="Add Issue Template in repository."
SCRIPT_DESCRIPTION_ES="Agregar Issue Template en el repositorio."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository"

# tools
. "$(dirname "$0")/../../../bash-utilities.sh"

# add
if [ "$ARG_BASH_H" != true ]; then
  [ ! -d ".github" ] && mkdir .github
  [ ! -d ".github/ISSUE_TEMPLATE" ] && mkdir .github/ISSUE_TEMPLATE

  cp -r "$SCRIPTS_PATH/github/issue/template/files/ISSUE_TEMPLATE/"* .github/ISSUE_TEMPLATE/
fi
