#!/bin/sh
sleep 2
mkdir ~/App
curl -Lo ~/App/nvim.appimage https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo chmod u+x ~/App/nvim.appimage
sudo ln -s ~/App/nvim.appimage /usr/bin/nvim:

# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo apt update
# sudo apt install neovim




