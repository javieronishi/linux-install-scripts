#!/bin/bash

# Configuración simple
LOG_FILE="/home/javier/.logs/root_auto_update.log"

# Crear carpeta de logs si no existe
mkdir -p /home/javier/.logs

# Función para logging
log_message() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# Inicio
log_message "🚀 INICIO Actualización desde root"

# Actualizar sistema
log_message "📦 Actualizando repositorios..."
apt update -y >> "$LOG_FILE" 2>&1 && log_message "✅ Repositorios actualizados" || log_message "❌ Error actualizando repositorios"

log_message "🔄 Actualizando paquetes..."
apt upgrade -y >> "$LOG_FILE" 2>&1 && log_message "✅ Paquetes actualizados" || log_message "❌ Error actualizando paquetes"

log_message "🧹 Limpiando sistema..."
apt autoremove -y >> "$LOG_FILE" 2>&1 && log_message "✅ Paquetes obsoletos eliminados" || log_message "❌ Error limpiando paquetes"
apt autoclean -y >> "$LOG_FILE" 2>&1 && log_message "✅ Cache limpiado" || log_message "❌ Error limpiando cache"

log_message "⚡ Actualizando distribución..."
apt dist-upgrade -y >> "$LOG_FILE" 2>&1 && log_message "✅ Distribución actualizada" || log_message "❌ Error actualizando distribución"

# Verificar reinicio
if [ -f /var/run/reboot-required ]; then
    log_message "⚠️  REINICIO REQUERIDO - Ejecuta: reboot"
else
    log_message "✅ No se requiere reinicio"
fi

log_message "🎯 FIN Actualización completada"
echo "" >> "$LOG_FILE"