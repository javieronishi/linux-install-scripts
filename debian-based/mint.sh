#!/bin/bash

echo "ACTUALIZANDO EL SISTEMA"
./sh/update.sh

echo "INSTALANDO UTILIDADES COMUNES"
./sh/utils.sh

echo "ELIMINAR PAQUETES INNECESARIOS"
./sh/autoclean.sh

echo "INSTALANDO JAVA"
./sh/java11.sh

echo "INSTALANDO SPOTIFY"
./sh/spotify.sh

echo "INSTALANDO DOCKER"
./sh/docker.sh

echo "INSTALANDO SUBLIME TEXT"
./sh/sublimetext.sh

echo "INSTALANDO BRAVE BROWSER"
./sh/brave.sh

echo "INSTALANDO APP IMAGE LAUCHER"
./sh/appimagelauncher.sh

echo "INSTALANDO ULAUNCHER"
./sh/ulauncher.sh

echo "INSTALANDO VOLTA"
./sh/volta.sh

echo "INSTALANDO NEOVIM"
./sh/neovim.sh

echo "INSTALANDO K6"
./sh/k6.sh

echo "INSTALANDO .deb"
./sh/software.sh

