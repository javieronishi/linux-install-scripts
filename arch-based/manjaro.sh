#!/bin/bash

echo "ACTUALIZANDO EL SISTEMA"
sleep 2s
sudo pacman -Sy --noconfirm
sudo pacman -Syu --noconfirm

echo "INSTALANDO UTILIDADES COMUNES"
sleep 2s
sudo pacman -S yay --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S dbeaver --noconfirm
sudo pacman -S tilix --noconfirm
sudo pacman -S tmux --noconfirm
sudo pacman -S ttf-fira-code --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S neovim --noconfirm
sudo pacman -S vlc --noconfirm
sudo pacman -S noto-fonts-emoji --noconfirm
sudo pacman -S noto-fonts-extra --noconfirm
sudo pacman -S libreoffice-fresh-es --noconfirm
sudo pacman -S firefox-developer-edition --noconfirm

echo "INSTALANDO DOCKER"
sleep 2s
sudo pacman -S docker --noconfirm
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -a -G docker $USER
sudo pacman -S docker-compose --noconfirm
