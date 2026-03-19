#!/bin/bash
echo "=========================================="
echo "=> Instalando Brave Browser      ========="
echo "=========================================="
sleep 2

sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources

sudo apt update -y
sudo apt install brave-browser -y

# curl -fsS https://dl.brave.com/install.sh | sh
