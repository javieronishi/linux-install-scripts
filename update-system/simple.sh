#!/bin/bash

# Ruta de la carpeta de logs en el directorio home
LOGS_FOLDER="$HOME/.logs"
PWD_FOLDER="$HOME/.pwd"

# Crear la carpeta de logs si no existe
mkdir -p "$LOGS_FOLDER"

# Ruta del archivo de registro
LOG_FECHA="log_fecha.log"

PASSWORD_FILE="$PWD_FOLDER/password.txt"

# Leer el password de sudo desde el archivo
sudo_password=$(cat "$PASSWORD_FILE")

# Actualizar los paquetes del sistema
echo "$sudo_password" | sudo -S apt update -y
echo "$sudo_password" | sudo -S apt upgrade -y

# Limpiar paquetes obsoletos
echo "$sudo_password" | sudo -S apt autoremove -y
echo "$sudo_password" | sudo -S apt autoclean -y

# Actualizar el kernel del sistema
echo "$sudo_password" | sudo -S apt dist-upgrade -y

fecha_actual=$(date +'%Y-%m-%d %H:%M:%S')
echo "Script ejecutado el: $fecha_actual" >> "$LOGS_FOLDER/$LOG_FECHA"

