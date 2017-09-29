#!/usr/bin/env bash

source ./scripts/common.sh

symlink_dot_home ".bash_profile"
symlink_dot_home ".bash_scripts"
symlink_dot_home ".bash_aliases"
symlink_dot_home ".vim"
symlink_dot_home ".vimrc"

if [[ ${OS} = "linux" ]]; then
    symlink_dot_home ".fonts"
    symlink_dot_home ".i3"
fi

install_runner git
install_runner nvm
# install_runner postman
