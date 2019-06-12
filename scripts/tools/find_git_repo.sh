#!/bin/bash
set -e  # exit on first error

ITER=0

findAllFolder(){
    # echo "new findAllFolder in $1"
    cd $1
    for sub in $(ls $1); do
        if (test -d ${sub}) ; then
            SUCCESSOR_DIR=$( cd $1/${sub} && pwd)
            if (isGitRepo ${SUCCESSOR_DIR}); then
                echo "${SUCCESSOR_DIR} is a git repository."
                GIT_REPO_DIR[ITER]=${SUCCESSOR_DIR}
                ITER=$[ ${ITER} + 1 ] # ITER=${ITER}+1 is also Okay.
            else
                # echo "${SUCCESSOR_DIR} is a normal folder."
                findAllFolder ${SUCCESSOR_DIR}
            fi
        fi
    done
    cd ..
    # pwd
}

isGitRepo(){
    # 0 - true; 1 - false
    CANDIDATE_DIR=$1
    if [ $(ls -al ${CANDIDATE_DIR} | grep "^d" | grep -w ".git" | wc -l) -eq 1 ]; then
        return 0
    else
        return 1
    fi
}

main(){
    BASE_DIR=$(cd $1 && pwd)
    echo -e "\033[36m current dir is: ${BASE_DIR} \033[0m"
    cd ${BASE_DIR}
    findAllFolder ${BASE_DIR}
    export GIT_REPO_DIR # use source ./*.sh to export variable
    echo "Found Git repositories: ${#GIT_REPO_DIR[*]}"
}

main $1



