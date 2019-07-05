#!/bin/bash
set -e  # exit on first error

SCRIPT_DIR=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )
BIN_DIR=$HOME/bin

setupAliases() {
    # git_update_batch alias
    if (grep -q "git_update_batch" ~/.bash_aliases); then
        echo "Found bashrc entry: git_update_batch=$SCRIPT_DIR/tools/git_update_batch.sh"
    else
        echo "alias git_update_batch='${SCRIPT_DIR}/tools/git_update_batch.sh'" >> ~/.bash_aliases
    fi
    
    # find_git_repo alias
    if (grep -q "find_git_repo" ~/.bash_aliases); then
        echo "Found bashrc entry: find_git_repo=$SCRIPT_DIR/tools/find_git_repo.sh"
    else
        echo "alias find_git_repo='${SCRIPT_DIR}/tools/find_git_repo.sh'" >> ~/.bash_aliases
    fi
    
    # update
    source ~/.bashrc
}

main() {
    setupAliases
}

main
