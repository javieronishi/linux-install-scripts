#!/bin/bash

LOG_FILE="$HOME/system-update.log"

# Función para registrar en log con timestamp
log() {
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] $1" | tee -a "$LOG_FILE"
}

# Encabezado con separador
log "=========================================="
log "=== INICIANDO ACTUALIZACIÓN DEL SISTEMA ==="
log "=========================================="
log ""

# Actualizar lista de paquetes
log "📦 Actualizando lista de paquetes..."
if sudo apt update; then
    log "✅ Lista de paquetes actualizada correctamente"
else
    log "❌ Error al actualizar lista de paquetes"
fi

# Actualizar paquetes existentes
log "🔄 Actualizando paquetes instalados..."
if sudo apt upgrade -y; then
    log "✅ Paquetes actualizados correctamente"
else
    log "⚠️  Hubo problemas al actualizar paquetes"
fi

# Actualizar distribución
log "🚀 Actualizando distribución..."
if sudo apt full-upgrade -y; then
    log "✅ Distribución actualizada correctamente"
else
    log "⚠️  Hubo problemas con la actualización completa"
fi

# Limpiar paquetes obsoletos
log "🧹 Limpiando paquetes obsoletos..."
sudo apt autoremove -y
sudo apt autoclean
log "✅ Sistema limpiado"

# Pie del registro
log ""
log "=========================================="
log "=== ACTUALIZACIÓN COMPLETADA ==="
log "=========================================="
log ""  # Salto de línea final
log ""  # Salto de línea final para separar próxima ejecución