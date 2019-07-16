#!/bin/bash
set -e  # exit on first error

main(){
  installOkular
}

installOkular(){
  sudo apt-get -y install okular
}

main
