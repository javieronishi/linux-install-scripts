#!/bin/bash
echo "=========================================="
echo "=> Instalando Antigravity        ========="
echo "=========================================="
sleep 2

sudo tee /etc/yum.repos.d/antigravity.repo << EOL
[antigravity-rpm]
name=Antigravity RPM Repository
baseurl=https://us-central1-yum.pkg.dev/projects/antigravity-auto-updater-dev/antigravity-rpm
enabled=1
gpgcheck=0
EOL

sudo dnf makecache

sudo dnf install antigravity