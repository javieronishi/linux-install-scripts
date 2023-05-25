#!/bin/sh
sleep 2s
sudo add-apt-repository ppa:agornostal/ulauncher -y
sudo apt update -y
sudo apt install ulauncher -y

# theme TokyoNight Theme by SirHades696
mkdir -p ~/.config/ulauncher/user-themes
git clone https://github.com/SirHades696/TokyoNight-Ulauncher-Theme \
  ~/.config/ulauncher/user-themes/

