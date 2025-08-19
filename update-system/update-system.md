# Editar configuración de sudo
sudo visudo
sudo nano /etc/sudoers

# Agregar al final del archivo (reemplaza 'tu_usuario' con tu usuario real)
tu_usuario ALL=(ALL) NOPASSWD: /usr/bin/apt update, /usr/bin/apt upgrade, /usr/bin/apt full-upgrade, /usr/bin/apt autoremove, /usr/bin/apt autoclean

# Cron
crontab -e
0 12 1 * * $HOME/update-system.sh


0 12 1 * * /usr/local/bin/update-system.sh
│  │  │ │ │
│  │  │ │ └── Comando a ejecutar
│  │  │ └──── Día de la semana (* = todos)
│  │  └────── Día del mes (1 = primer día)
│  └───────── Hora (12 = mediodía)
└──────────── Minuto (0 = en punto)


# Ver el crontab de root actual
crontab -l