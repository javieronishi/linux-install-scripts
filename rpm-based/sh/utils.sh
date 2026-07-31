#!/bin/bash
set -e

echo "=========================================="
echo "=> Instalando utilidades comunes (Fedora) ="
echo "=========================================="
sleep 2s

# ------------------------------------------
# 1. Actualizar sistema (recomendado antes de instalar)
# ------------------------------------------
sudo dnf upgrade -y

# ------------------------------------------
# 2. Habilitar RPM Fusion (necesario para vlc, unrar, etc.)
# ------------------------------------------
echo "=> Habilitando RPM Fusion..."
sudo dnf install -y \
  "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
  "https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

# ------------------------------------------
# 3. Plugins de dnf (equivalente a software-properties-common)
# ------------------------------------------
sudo dnf install -y dnf-plugins-core

# ------------------------------------------
# 4. Utilidades base
# ------------------------------------------
sudo dnf install -y ca-certificates
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y curl
sudo dnf install -y flameshot
sudo dnf install -y fira-code-fonts
sudo dnf install -y google-noto-emoji-fonts
sudo dnf install -y powerline-fonts
sudo dnf install -y gcc
sudo dnf install -y git
sudo dnf install -y gitg
sudo dnf install -y gnupg2
sudo dnf install -y firewalld firewall-config
sudo dnf install -y htop
sudo dnf install -y openssl-devel
sudo dnf install -y net-tools
sudo dnf install -y ntfs-3g
sudo dnf install -y p7zip p7zip-plugins
sudo dnf install -y tmux
sudo dnf install -y unzip
sudo dnf install -y xz
sudo dnf install -y zip
sudo dnf install -y zsh

# ------------------------------------------
# 5. Paquetes de RPM Fusion (multimedia / compresión)
# ------------------------------------------
sudo dnf install -y vlc
sudo dnf install -y unrar

# ------------------------------------------
# 6. Impresoras (set base, no existe metapaquete "todos los drivers")
# ------------------------------------------
sudo dnf install -y cups cups-filters foomatic gutenprint

# ------------------------------------------
# 7. Firewalld: habilitar y arrancar el servicio
# ------------------------------------------
sudo systemctl enable --now firewalld

echo "=========================================="
echo "=> Instalación completada"
echo "=========================================="