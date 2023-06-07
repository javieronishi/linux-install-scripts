#!/bin/bash

# Ruta del archivo de registro
LOG_UPDATE="log_update.log"
LOG_UPGRADE="log_upgrade.log"
LOG_KERNEL="log_kernel.log"
LOG_AUTOREMOVE="log_autoremove.log"
LOG_FECHA="log_fecha.log"

PASSWORD_FILE="password.txt"

# Leer el password de sudo desde el archivo
sudo_password=$(cat "$PASSWORD_FILE")

# Actualizar los paquetes del sistema y guardar el detalle en el archivo de registro
echo "$sudo_password" | sudo -S apt update | tee -a $LOG_UPDATE
echo "$sudo_password" | sudo -S apt upgrade -y | tee -a $LOG_UPGRADE

# Limpiar paquetes obsoletos y guardar el detalle en el archivo de registro
echo "$sudo_password" | sudo -S apt autoremove -y | tee -a $LOG_AUTOREMOVE
echo "$sudo_password" | sudo -S apt autoclean | tee -a $LOG_AUTOREMOVE

# Actualizar el kernel del sistema y guardar el detalle en el archivo de registro
echo "$sudo_password" | sudo -S apt dist-upgrade -y | tee -a $LOG_KERNEL

fecha_actual=$(date +'%Y-%m-%d %H:%M:%S')
echo "Script ejecutado el: $fecha_actual" >> $LOG_FECHA
# echo -e "Script ejecutado el: $fecha_actual\n" >> $LOG_FECHA

