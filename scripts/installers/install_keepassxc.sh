#!/bin/bash
set -e  # exit on first error

main(){
  installKeepassXC
}

installKeepassXC(){
# Install the GPG key
sudo add-apt-repository ppa:phoerious/keepassxc

# Update apt sources and install Sublime Text
sudo apt-get update
sudo apt-get install -y keepassxc

}

main
