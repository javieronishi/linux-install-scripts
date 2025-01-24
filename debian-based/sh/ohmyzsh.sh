#!/bin/bash
echo "=========================================="
echo "=> Instalando Oh My Zsh       ============"
echo "=========================================="
sleep 2
sudo apt install zsh -y

echo "=> Cambiando shell a zsh"
chsh -s $(which zsh)

echo "=> Instalando Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "=> Recargando la configuración de Zsh"
source ~/.zshrc


