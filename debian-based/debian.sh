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
./sh/docker-debian.sh

echo "INSTALANDO SUBLIME TEXT"
./sh/sublimetext.sh

echo "INSTALANDO BRAVE BROWSER"
./sh/brave.sh

echo "INSTALANDO VOLTA"
./sh/volta.sh

echo "INSTALANDO NEOVIM"
./sh/neovim.sh

echo "INSTALANDO K6"
./sh/k6.sh

echo "INSTALANDO LIBREOFFICE"
./sh/libreoffice.sh

echo "INSTALANDO .deb"
./sh/software.sh

