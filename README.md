# Linux Install Scripts 🐧

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Una colección de scripts de Bash para automatizar la instalación y configuración de diversas herramientas y entornos en sistemas Linux.
*A collection of Bash scripts to automate the installation and configuration of various tools and environments on Linux systems.*

---

## 📁 Estructura del Proyecto / Project Structure

El repositorio está organizado por distribuciones y categorías:
*The repository is organized by distributions and categories:*

### 1. Arch-based 🏗️
Scripts diseñados para distribuciones basadas en Arch (como EndeavourOS):
*Scripts designed for Arch-based distributions (like EndeavourOS):*
- `endeavouros.sh`: Configuración completa para EndeavourOS.
- `gnome.sh` / `kde.sh`: Entornos de escritorio.
- `aur.txt`: Lista de paquetes de AUR recomendados.

### 2. Debian-based 📦
Scripts para Ubuntu, Mint, Debian, Kali y Elementary:
*Scripts for Ubuntu, Mint, Debian, Kali, and Elementary:*
- `ubuntu.sh` / `debian.sh` / `kali.sh`: Scripts base para cada distro.
- `ubuntu-mint.sh`: Configuración optimizada para Ubuntu/Mint.
- **sh/**: Scripts especializados para herramientas específicas:
    - `docker.sh`, `neovim.sh`, `windsurf.sh`, `zed-editor.sh`, `brave.sh`, `spotify.sh`, `java11.sh`, `ohmyzsh.sh`, etc.

### 3. Update System 🔄
Scripts para el mantenimiento y actualización del sistema:
*Scripts for system maintenance and updates:*
- `update-system.sh`: Script integral de actualización.
- `trash_files.sh`: Limpieza de archivos innecesarios.

---

## 🚀 Uso / Usage

### ⚙️ Instalación / Installation

1. **Clonar el repositorio / Clone the repository:**
   ```bash
   git clone https://github.com/javieronishi/linux-install-scripts.git
   cd linux-install-scripts
   ```

2. **Otorgar permisos / Set permissions:**
   ```bash
   chmod +x debian-based/*.sh
   chmod +x debian-based/sh/*.sh
   chmod +x arch-based/*.sh
   chmod +x update-system/*.sh
   ```

3. **Ejecutar / Execute:**
   Navega a la carpeta correspondiente y lanza el script:
   *Navigate to the folder and run the script:*
   ```bash
   cd debian-based
   ./ubuntu.sh
   ```

---

## 🛠️ Herramientas Incluidas / Included Tools

Algunas de las herramientas que puedes instalar con estos scripts:
*Some of the tools you can install with these scripts:*

- **Entorno de Desarrollo:** Docker, Neovim, Windsurf, Zed Editor, Sublime Text, Java 11, BunJS, K6.
- **Navegación y Web:** Brave Browser, Spotify, Zulip.
- **Utilidades:** Stacer, Ulauncher, AppImageLauncher, Oh My Zsh, TLP, Batcat.
- **Personalización:** Papirus Icon Theme, Gnome Tweaks, Pantheon Tweaks.

---

## 📄 Licencia / License

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
*This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.*