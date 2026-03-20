#!/bin/bash

# --- Home Lab Full Backup Script ---
# Author: Edgar F. Ariza Carreño
# Description: Automates the backup of the entire home directory.
#
# CRONTAB INSTALLATION:
# This script runs every sunday at 12:01
# 01 12 * * 0 /bin/bash /home/edgar/backup/backup.sh >> /var/backup/backup.log 2>&1
# ---------------------------------------------------------

# 1. Definición de rutas
ORIGEN="/home/edgar"
DESTINO="/var/backup"

# 2. Generación de nombre con fecha dinámica
FECHA=$(date +%Y-%m-%d)
NOMBRE_ARCHIVO="full_backup_edgar_$FECHA.tar.gz"

# 3. Creación del paquete comprimido
# -c: Create, -z: gzip, -f: file
tar -czf $DESTINO/$NOMBRE_ARCHIVO $ORIGEN

# 4. Registro en el log
echo "[$(date +'%Y-%m-%d %H:%M:%S')] SUCCESS: Backup created at $DESTINO/$NOMBRE_ARCHIVO"
