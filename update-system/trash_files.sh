#!/bin/bash

LOG_FECHA="trash_log_fecha.log"

fecha_actual=$(date +'%Y-%m-%d %H:%M:%S')

# Directorio de origen (cambiar esta variable según tus necesidades)
ORIGEN="$HOME/Downloads"

# Directorio de la papelera de reciclaje
PAPELERA="$HOME/.local/share/Trash/files"

# Verificar si el directorio de origen existe
if [ ! -d "$ORIGEN" ]; then
  echo "El directorio origen $ORIGEN no existe -> Fecha: $fecha_actual" >> $LOG_FECHA
  exit 1
fi

# Crear el directorio de la papelera si no existe
mkdir -p "$PAPELERA"

# Mover todos los archivos del directorio de origen a la papelera
mv "$ORIGEN"/* "$PAPELERA"

# Verificar si el comando mv fue exitoso
if [ $? -eq 0 ]; then
  echo "Todos los archivos de $ORIGEN han sido movidos a la papelera. -> Fecha: $fecha_actual" >> $LOG_FECHA
else
  echo "Ocurrió un error al mover los archivos a la papelera. -> Fecha: $fecha_actual" >> $LOG_FECHA
  exit 1
fi
