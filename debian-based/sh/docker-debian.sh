#!/bin/bash
# Instalar docker
echo "=========================================="
echo "=> Instalar docker                   ====="
echo "=========================================="
sleep 2s
sudo apt install docker.io -y
sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "===> DOCKER version: $(docker -v)"
echo "===> DOCKER COMPOSE version: $(docker-compose -v)"
