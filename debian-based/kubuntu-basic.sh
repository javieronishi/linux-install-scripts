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

# debe tener los .deb en la carpeta Downloads/deb
# INSTALA .deb
./sh/software.sh

