#!/bin/bash

echo "=========================================="
echo "=> Instalando Bat                 ========"
echo "=========================================="
sleep 2s
sudo apt install bat -y
echo -e '\nalias cat="batcat"' >> ~/.zshrc

source ~/.zshrc

