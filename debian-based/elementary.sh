#!/bin/bash

echo "ACTUALIZANDO EL SISTEMA"
./sh/update.sh

echo "INSTALANDO PANTHEON TWEAKS"
./sh/pantheon-tweaks.sh

echo "INSTALANDO UBUNTU DRIVERS"
./sh/ubuntu-drivers.sh

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

echo "INSTALANDO APP IMAGE LAUCHER"
./sh/appimagelauncher.sh

echo "INSTALANDO ULAUNCHER"
./sh/ulauncher.sh

echo "INSTALANDO VOLTA"
./sh/volta.sh

echo "INSTALANDO NEOVIM"
./sh/neovim.sh

echo "INSTALANDO .deb"
./sh/software.sh
