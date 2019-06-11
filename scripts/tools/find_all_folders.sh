#!/bin/bash
set -e  # exit on first error

SUCCESSOR_DIR=$1

findAllFolder(){
	echo "new findAllFolder in $1"
	cd $1
	for sub in $(ls $1); do
	    if (test -d ${sub}) ; then
	    	SUCCESSOR_DIR=$( cd $1/${sub} && pwd)
	        echo "$1/${sub} is a folder."
	        findAllFolder ${SUCCESSOR_DIR}
	    fi
	done
	cd ..
	# pwd
}

main(){
	BASE_DIR=$(cd $1 && pwd)
	echo -e "\033[47;30m current dir is: $BASE_DIR \033[0m"
	cd ${BASE_DIR}
	findAllFolder ${BASE_DIR}
}

main $1