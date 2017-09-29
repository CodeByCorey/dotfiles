#!/usr/bin/env bash
# Personal Aliases
#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all common script functions
#
#  ---------------------------------------------------------------------------

OS=$(UNAME=$(uname); echo ${UNAME,,})
SCRIPTS_FOLDER=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
ROOT_FOLDER=$(cd $(dirname ${SCRIPTS_FOLDER}) && pwd)

# Deletes current files and symlinks dotfiles
# $1 = dot file or directory name
function symlink_dot_home () {
    if [ -L ${HOME}/${1} ]; then
        echo "~/$1 Already Exists:  Removing..."
        rm ~/${1}
    fi
    ln -s ${ROOT_FOLDER}/dots/${1} ${HOME}/${1}
    if [ -L ${HOME}/$1 ]; then
        echo "Successfully created ${HOME}/$1"
    else
        echo "Error: ${HOME}/$1 not created"
    fi
}

# Runs specified install script
# $1 = name of install script
function install_runner() {
    FILE="./scripts/installs/$1.sh"
    echo $FILE
    if [ -f $FILE ]; then
        source $FILE
    else
        echo "file does not exist"
    fi
}
