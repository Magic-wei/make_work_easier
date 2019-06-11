#!/bin/bash
set -e  # exit on first error

SCRIPT_DIR=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )

main(){
	source ${SCRIPT_DIR}/find_git_repo.sh $1
	echo "Found Git repositories: ${git_repo[*]}"
}

main $1

