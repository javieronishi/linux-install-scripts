#!/bin/bash
echo "=========================================="
echo "=> Instalar neoVim                   ====="
echo "=========================================="
sleep 2
sudo apt-get install ripgrep -y

DESTINATION_DIR="$HOME/Apps"
mkdir -p "$DESTINATION_DIR"
curl -Lo "$DESTINATION_DIR/nvim.appimage" https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod +x "$DESTINATION_DIR/nvim.appimage"
sudo ln -s "$DESTINATION_DIR/nvim.appimage" /usr/bin/nvim

# para debian
# sudo apt-get install fuse
# sudo apt-get install build-essential


# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
# chmod u+x nvim-linux-x86_64.appimage
# ./nvim-linux-x86_64.appimage