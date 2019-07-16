#!/bin/bash
set -e  # exit on first error

main(){
  installSublime
}

installSublime(){
# Install the GPG key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# Ensure apt is set up to work with https sources
sudo apt-get install -y apt-transport-https

# Select the channel `Stable` to use
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update apt sources and install Sublime Text
sudo apt-get update
sudo apt-get install -y sublime-text sublime-merge

}

main
