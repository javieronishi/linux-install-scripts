#!/bin/bash
echo "=========================================="
echo "=> Actualizando el sistema           ====="
echo "=========================================="
sleep 2s
sudo dnf update -y
sudo dnf upgrade -y
