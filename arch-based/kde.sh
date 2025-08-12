#!/bin/bash

# probado en manjaro kde plasma
echo "🔄 ACTUALIZANDO EL SISTEMA..."
sleep 2s
sudo pacman -Syu --noconfirm

echo "📦 INSTALANDO UTILIDADES COMUNES..."
sleep 2s

sudo pacman -S yay --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S dbeaver --noconfirm
sudo pacman -S tmux --noconfirm
sudo pacman -S ttf-fira-code --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S neovim --noconfirm
sudo pacman -S zsh --noconfirm
sudo pacman -S vlc --noconfirm
sudo pacman -S noto-fonts-emoji --noconfirm
sudo pacman -S noto-fonts-extra --noconfirm
sudo pacman -S vivaldi --noconfirm
sudo pacman -S bitwarden --noconfirm
sudo pacman -S ghostty --noconfirm
sudo pacman -S audacious --noconfirm
sudo pacman -S flameshot --noconfirm
sudo pacman -S unzip --noconfirm
sudo pacman -S fakeroot --noconfirm
sudo pacman -S base-devel --noconfirm
sudo pacman -S cmake --noconfirm

yay -S visual-studio-code-bin --noconfirm
yay -S windsurf --noconfirm
yay -S spotify --noconfirm

echo "🐳 INSTALANDO DOCKER Y DOCKER-COMPOSE..."
sleep 2s
sudo pacman -S docker docker-compose --noconfirm
sudo systemctl enable --now docker.service
sudo usermod -aG docker "$USER"

echo "✅ Todo listo. Reiniciá sesión para que los cambios de Docker se apliquen correctamente."
