#!/bin/bash

LOG_FILE="instalacion.log"

# Función para guardar los resultados en el archivo de registro
guardar_resultado() {
  echo "$1" >>"$LOG_FILE"
}

echo "ACTUALIZANDO EL SISTEMA"
sleep 2s
sudo pacman -Sy --noconfirm
sudo pacman -Syu --noconfirm

echo "INSTALANDO UTILIDADES COMUNES"
sleep 2s
if ! command -v yay &>/dev/null; then
  sudo pacman -S yay --noconfirm
  if command -v yay &>/dev/null; then
    guardar_resultado "Instalación de yay exitosa"
  else
    guardar_resultado "Error al instalar yay"
  fi
fi

if ! command -v neofetch &>/dev/null; then
  sudo pacman -S neofetch --noconfirm
  if command -v neofetch &>/dev/null; then
    guardar_resultado "Instalación de neofetch exitosa"
  else
    guardar_resultado "Error al instalar neofetch"
  fi
fi

if ! command -v dbeaver &>/dev/null; then
  sudo pacman -S dbeaver --noconfirm
  if command -v dbeaver &>/dev/null; then
    guardar_resultado "Instalación de dbeaver exitosa"
  else
    guardar_resultado "Error al instalar dbeaver"
  fi
fi

if ! command -v tilix &>/dev/null; then
  sudo pacman -S tilix --noconfirm
  if command -v tilix &>/dev/null; then
    guardar_resultado "Instalación de tilix exitosa"
  else
    guardar_resultado "Error al instalar tilix"
  fi
fi

if ! command -v tmux &>/dev/null; then
  sudo pacman -S tmux --noconfirm
  if command -v tmux &>/dev/null; then
    guardar_resultado "Instalación de tmux exitosa"
  else
    guardar_resultado "Error al instalar tmux"
  fi
fi

if ! command -v ttf-fira-code &>/dev/null; then
  sudo pacman -S ttf-fira-code --noconfirm
  if command -v fc-cache &>/dev/null; then
    fc-cache -f -v
    guardar_resultado "Instalación de ttf-fira-code exitosa"
  else
    guardar_resultado "Error al instalar ttf-fira-code"
  fi
fi

if ! command -v htop &>/dev/null; then
  sudo pacman -S htop --noconfirm
  if command -v htop &>/dev/null; then
    guardar_resultado "Instalación de htop exitosa"
  else
    guardar_resultado "Error al instalar htop"
  fi
fi

if ! command -v neovim &>/dev/null; then
  sudo pacman -S neovim --noconfirm
  if command -v neovim &>/dev/null; then
    guardar_resultado "Instalación de neovim exitosa"
  else
    guardar_resultado "Error al instalar neovim"
  fi
fi

if ! command -v xreader &>/dev/null; then
  sudo pacman -S xreader --noconfirm
  if command -v pacman &>/dev/null; then
    guardar_resultado "Instalación de pacman exitosa"
  else
    guardar_resultado "Error al instalar pacman"
  fi
fi

if ! command -v libreoffice-fresh-es &>/dev/null; then
  sudo pacman -S libreoffice-fresh-es --noconfirm
  if command -v libreoffice-fresh-es &>/dev/null; then
    guardar_resultado "Instalación de libreoffice-fresh-es exitosa"
  else
    guardar_resultado "Error al instalar libreoffice-fresh-es"
  fi
fi

if ! command -v zsh &>/dev/null; then
  sudo pacman -S zsh --noconfirm
  if command -v zsh &>/dev/null; then
    guardar_resultado "Instalación de zsh exitosa"
  else
    guardar_resultado "Error al instalar zsh"
  fi
fi

if ! command -v docker &>/dev/null; then
  sudo pacman -S docker --noconfirm
  if command -v docker &>/dev/null; then
    guardar_resultado "Instalación de docker exitosa"
  else
    guardar_resultado "Error al instalar docker"
  fi
  sudo systemctl start docker.service
  sudo systemctl enable docker.service
  sudo usermod -a -G docker $USER
  sudo pacman -S docker-compose --noconfirm
  if command -v docker-compose &>/dev/null; then
    guardar_resultado "Instalación de docker-compose exitosa"
  else
    guardar_resultado "Error al instalar docker-compose"
  fi
fi

if ! command -v vlc &>/dev/null; then
  sudo pacman -S vlc --noconfirm
  if command -v vlc &>/dev/null; then
    guardar_resultado "Instalación de vlc exitosa"
  else
    guardar_resultado "Error al instalar vlc"
  fi
fi

sudo pacman -S noto-fonts-emoji --noconfirm
sudo pacman -S noto-fonts-extra --noconfirm
