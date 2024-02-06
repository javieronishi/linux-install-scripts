#!/bin/bash
sleep 2s
sudo apt remove --purge libreoffice\* -y
sudo apt autoclean -y
sudo apt autoremove -y

echo "INSTALANDO LIBREOFFICE BASE"
sleep 2s
sudo apt install ~/Downloads/deb/libreoffice/1/*.deb -y

echo "INSTALANDO LIBREOFFICE INTERFAZ DE USUARIO TRADUCIDA ESPAÑOL"
sleep 2s
sudo apt install ~/Downloads/deb/libreoffice/2/*.deb -y

echo "INSTALANDO LIBREOFFICE AYUDA PARA USO SIN CONEXIÓN ESPAÑOL"
sleep 2s
sudo apt install ~/Downloads/deb/libreoffice/3/*.deb -y
