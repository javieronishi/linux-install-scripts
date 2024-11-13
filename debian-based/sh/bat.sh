#!/bin/bash

# Espera 2 segundos
sleep 2s

# Instala 'bat', un clon de 'cat' con resaltado de sintaxis y más características
sudo apt install bat -y

# Añade un alias para usar 'bat' como 'cat' en zsh
echo -e '\nalias cat="batcat"' >> ~/.zshrc

# Recarga la configuración de zsh para aplicar el nuevo alias
source ~/.zshrc

