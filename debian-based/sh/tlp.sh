#!/bin/bash
echo "=========================================="
echo "=> Instalando TLP mejorando la bateria ==="
echo "=========================================="
sleep 2s

sudo apt install tlp tlp-rdw -y
sudo systemctl enable tlp
sudo systemctl start tlp