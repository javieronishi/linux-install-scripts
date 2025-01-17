#!/bin/bash
echo "=========================================="
echo "=> Instalando software  .deb     ========="
echo "=========================================="
sleep 2
# git clone https://github.com/javieronishi/deb.git \
#   ~/Downloads
# if [ -e ~/Downloads/deb/deb.zip ]; then
#   unzip ~/Downloads/deb/deb.zip -d ~/Downloads/deb
#   sudo apt install ~/Downloads/deb/*.deb -y
# else
#   echo "El archivo deb.zip no se encontró en la carpeta de descargas."
# fi

sudo apt install ~/Downloads/deb/*.deb -y
