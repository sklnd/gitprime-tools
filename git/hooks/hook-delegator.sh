#!/bin/bash
#
# This code is licensed.  For details, please see the license file at
# https://github.com/gitprime/gitprime-tools/blob/master/LICENSE.md
#
# This particular tool is meant to manage all hooks.  It's basically
# a wrapper for the various specific hooks found in the hooks directory.
if [[ ! -z "${GITPRIME_TOOLS_HOME}" ]];
then
    # Ok, we have GITPRIME_TOOLS_HOME set.  We can use that as our base for includes
    source "${GITPRIME_TOOLS_HOME}/library/common.sh"
    source "${GITPRIME_TOOLS_HOME}/library/git.sh"
else
    # Nope, we need to throw an error
    echo -e "\e[91m\e[1mERROR:\e[21m\e[39m GITPRIME_TOOLS_HOME is not set.  Please set it in your .profile or .bashrc."
    echo -e "       This should have been automatically done when you ran the installer from:"
    echo -e ""
    echo -e "       https://raw.githubusercontent.com/gitprime/gitprime-tools/master/utility/install-tools.sh"

    exit 999
fi

echo "GitPrime Tools Home: ${GITPRIME_TOOLS_HOME}"

HOOK_ARGUMENTS=$@

HOOK_NAME=$(basename "$0")

exit 1