#!/bin/bash
sleep 2
DESTINATION_DIR="$HOME/App"
mkdir -p "$DESTINATION_DIR"
curl -Lo "$DESTINATION_DIR/nvim.appimage" https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x "$DESTINATION_DIR/nvim.appimage"
sudo ln -s "$DESTINATION_DIR/nvim.appimage" /usr/bin/nvim
