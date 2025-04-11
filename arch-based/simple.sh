#!/bin/bash

echo "🔄 ACTUALIZANDO EL SISTEMA..."
sleep 2s
sudo pacman -Syu --noconfirm

echo "📦 INSTALANDO UTILIDADES COMUNES..."
sleep 2s
sudo pacman -S --noconfirm \
  yay \
  neofetch \
  dbeaver \
  tilix \
  tmux \
  ttf-fira-code \
  htop \
  neovim \
  xreader \
  zsh \
  vlc \
  noto-fonts-emoji \
  noto-fonts-extra \
  libreoffice-fresh-es

echo "🐳 INSTALANDO DOCKER Y DOCKER-COMPOSE..."
sleep 2s
sudo pacman -S --noconfirm docker docker-compose
sudo systemctl enable --now docker.service
sudo usermod -aG docker "$USER"

echo "✅ Todo listo. Reiniciá sesión para que los cambios de Docker se apliquen correctamente."
