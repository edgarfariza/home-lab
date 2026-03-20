# Scripts de Automatizacion (Ubuntu Server)

Coleccion de herramientas Bash para gestion de Home Lab.

## Scripts

### 1. monitor.sh
Estado del sistema en tiempo real (RAM, Disco, CPU).
- Ejecucion: `./monitor.sh`

### 2. backup.sh
Copia comprimida de /home/edgar en /var/backup.
- Automatizacion (Crontab):
  01 12 * * 0 /bin/bash /home/edgar/backup/backup.sh >> /var/backup/backup.log 2>&1

## Configuracion inicial
```bash
chmod +x *.sh
sudo mkdir -p /var/backup && sudo chown edgar:edgar /var/backup
