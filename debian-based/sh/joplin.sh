#!/bin/bash
echo "=========================================="
echo "=> Instalando Joplin App         ========="
echo "=========================================="
sleep 2

sudo apt install libfuse2t64 -y

wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
