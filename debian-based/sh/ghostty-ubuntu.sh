#!/bin/bash
echo "=========================================="
echo "=> Instalando Ghostty Ubuntu     ========="
echo "=========================================="
sleep 2

sudo add-apt-repository ppa:mkasberg/ghostty-ubuntu
sudo apt update -y
sudo apt install ghostty -y