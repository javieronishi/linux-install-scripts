#!/bin/bash

# ACTUALIZANDO EL SISTEMA
./sh/update.sh

# INSTALA UTILIDADES COMUNES
./sh/utils.sh

# ELIMINAR PAQUETES INNECESARIOS
./sh/autoclean.sh

# INSTALA SPOTIFY
./sh/spotify.sh

# INSTALA DOCKER
./sh/docker-debian.sh

# INSTALA VOLTA
./sh/volta.sh

# INSTALA BUN JS
./sh/bunjs.sh

# INSTALA BATCAT
./sh/batcat.sh

# INSTALA DEBEAVER
./sh/dbeaver.sh

# INSTALA GHOSTTY
./sh/ghostty-ubuntu.sh

# INSTALA GNOME DISK UTILITY
./sh/gnome-disk-utility.sh

# INSTALA UBUNTU DRIVERS
./sh/ubuntu-drivers.sh

# INSTALA PAPIRUS ICON THEME
./sh/ubuntu-papirus-icon-theme.sh

# INSTALA WINDSURF
./sh/windsurf.sh

# INSTALA ZED EDITOR
./sh/zed-editor.sh

# INSTALA ZULIP
./sh/zulip.sh

# INSTALA ANTIGRAVITY
./sh/antigravity.sh

# INSTALA BRAVE
./sh/brave.sh

# INSTALA GNOME TWEAKS
./sh/gnome-tweaks.sh

# debe tener los .deb en la carpeta Downloads/deb
# INSTALA .deb
./sh/software.sh

