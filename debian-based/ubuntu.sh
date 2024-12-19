#!/bin/bash

echo "ACTUALIZANDO EL SISTEMA"
./sh/update.sh

echo "INSTALANDO UTILIDADES COMUNES"
./sh/utils.sh

echo "ELIMINAR PAQUETES INNECESARIOS"
./sh/autoclean.sh

echo "INSTALANDO SPOTIFY"
./sh/spotify.sh

echo "INSTALANDO DOCKER"
./sh/docker.sh

echo "INSTALANDO SUBLIME TEXT"
./sh/sublimetext.sh

echo "INSTALANDO BRAVE BROWSER"
./sh/brave.sh

echo "INSTALANDO VOLTA"
./sh/volta.sh

# echo "INSTALANDO NEOVIM"
# ./sh/neovim.sh

echo "INSTALANDO BAT"
./sh/bat.sh

echo "INSTALANDO ZED EDITOR"
./sh/zed-editor.sh

echo "INSTALANDO .deb"
./sh/software.sh

