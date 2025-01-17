#!/bin/bash
echo "=========================================="
echo "=> Limpiando paquetes innecesarios  ======"
echo "=========================================="
sleep 2s
sudo apt autoclean -y
sudo apt autoremove -y
