#!/bin/bash
sleep 2s
sudo apt install software-properties-common -y
sudo apt install build-essential -y
sudo apt install libssl-dev -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install unrar -y
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install xz-utils -y
sudo apt install p7zip -y
sudo apt install p7zip-full -y
sudo apt install p7zip-rar -y
sudo apt install rar -y
sudo apt install printer-driver-all -y
sudo apt install fonts-firacode -y
sudo apt install git -y
sudo apt install gitg -y
sudo apt install fonts-powerline -y
sudo apt install apt-transport-https -y
sudo apt install ca-certificates -y
sudo apt install curl -y
sudo apt install gnupg -y
sudo apt install lsb-release -y
sudo apt install tmux -y
sudo apt install htop -y
sudo apt install vlc -y
sudo apt install arc-theme -y

# paper icon theme
sudo add-apt-repository ppa:snwh/ppa -y
sudo apt update -y
sudo apt install paper-icon-theme -y

# tilix
sudo add-apt-repository ppa:webupd8team/terminix -y
sudo apt update -y
sudo apt install tilix