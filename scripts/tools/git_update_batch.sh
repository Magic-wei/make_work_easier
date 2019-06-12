#!/bin/bash
set -e  # exit on first error

# use ${GIT_REPO_DIR[*]} to access to git repository.

SCRIPT_DIR=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )

main(){
	# mode check
	mode_check $2

	# find all git repositories in base directory, exit with no git repository.
	BASE_DIR=$(cd $1 && pwd)
	source ${SCRIPT_DIR}/find_git_repo.sh ${BASE_DIR}
	if [ ${#GIT_REPO_DIR[*]} -lt 1 ]; then
		echo -e "\033[31m No git repository is found. \033[0m"
		exit
	fi

	# execute git instruction in a batch way
	for dir in ${GIT_REPO_DIR[*]}; do
		cd ${dir}
		echo -e "\033[32m now in the git repository: ${dir} \033[0m" # green words
		case $2 in
			status) git status;;
	        push) git push;;
			pull) git pull;;
			fetch) git fetch;;
			remote) git remote -v;;
		esac
	done
}

mode_check(){
	case $1 in
		status) echo "git status mode";;
        push) echo "git push mode";;
		pull) echo "git pull mode";;
		fetch) echo "git fetch mode";;
		remote) echo "git remote mode";;
		*) echo -e "\033[31m This script now only support status, push, pull, fetch and remote mode! \033[0m" && exit;;
    esac
}

main $1 $2

