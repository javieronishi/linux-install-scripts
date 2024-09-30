#!/bin/bash

# Ruta del archivo de registro
LOG_UPDATE="$PWD/.bash/log_update.log"
LOG_FECHA="$PWD/.bash/log_fecha.log"
LOG_PASSWORD_FILE="$PWD/.bash/log_password_file.log"

fecha_actual=$(date +'%Y-%m-%d %H:%M:%S')

PASSWORD_FILE="$PWD/.bash/.pwd.txt"

# Verificar si el archivo de password existe
if [ ! -f "$PASSWORD_FILE" ]; then
  echo "El archivo de password $PASSWORD_FILE no existe: $fecha_actual" >> $LOG_PASSWORD_FILE
  exit 1
fi

# Leer el password de sudo desde el archivo
sudo_password=$(cat "$PASSWORD_FILE")

# Actualizar los paquetes del sistema y guardar el detalle en el archivo de registro
echo "$sudo_password" | sudo -S apt update -y | tee -a $LOG_UPDATE
echo "$sudo_password" | sudo -S apt upgrade -y | tee -a $LOG_UPDATE

# Limpiar paquetes obsoletos y guardar el detalle en el archivo de registro
echo "$sudo_password" | sudo -S apt autoremove -y | tee -a $LOG_UPDATE
echo "$sudo_password" | sudo -S apt autoclean -y | tee -a $LOG_UPDATE

# Registrar la fecha y hora de ejecución del script
echo "Script ejecutado el: $fecha_actual" >> $LOG_FECHA
echo "Script ejecutado el: $fecha_actual"
