#!/bin/bash
echo "=========================================="
echo "=> Instalando Papirus Icon Theme ========="
echo "=========================================="
sleep 2

#Ubuntu
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update -y
sudo apt-get install papirus-icon-theme -y