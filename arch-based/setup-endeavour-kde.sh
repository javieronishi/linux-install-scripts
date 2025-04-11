#!/bin/bash

echo "🔄 ACTUALIZANDO EL SISTEMA..."
sleep 2s
sudo pacman -Syu --noconfirm

echo "📦 INSTALANDO UTILIDADES Y HERRAMIENTAS DE DESARROLLO..."
sleep 2s
sudo pacman -S --noconfirm \
  yay \
  neofetch \
  dbeaver \
  tmux \
  ttf-fira-code \
  htop \
  neovim \
  zsh \
  vlc \
  noto-fonts-emoji \
  noto-fonts-extra \
  libreoffice-fresh-es \
  okular \
  git \
  unzip \
  wget \
  curl

echo "🐳 INSTALANDO DOCKER Y DOCKER-COMPOSE..."
sleep 2s
sudo pacman -S --noconfirm docker docker-compose
sudo systemctl enable --now docker.service
sudo usermod -aG docker "$USER"

echo "🔧 INSTALANDO SOPORTE PARA PANTALLA TÁCTIL Y GESTOS..."
sleep 2s
yay -S --noconfirm touchegg touche onboard

echo "🖥️ INSTALANDO TERMINAL MODERNA GHOSTTY..."
sleep 2s
yay -S --noconfirm ghostty-bin

echo "✅ Configuración completada. Recordá reiniciar la sesión para aplicar los cambios de Docker y Touchégg."
