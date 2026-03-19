#!/bin/bash
echo "=========================================="
echo "=> Instalando Zulip              ========="
echo "=========================================="
sleep 2


sudo apt install curl -y
sudo curl -fL -o /etc/apt/trusted.gpg.d/zulip-desktop.asc \
    https://download.zulip.com/desktop/apt/zulip-desktop.asc
echo "deb https://download.zulip.com/desktop/apt stable main" | \
    sudo tee /etc/apt/sources.list.d/zulip-desktop.list
sudo apt update -y
sudo apt install zulip -y