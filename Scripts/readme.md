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

### 3. welcome.sh
Configuracion de bienvenida que muestra informacion general (datos del usuario, hora, calendario, recordatorios creados por el usuario previamente y fecha de ultimo backup.
-Importante anadir este archivo en la carpeta .bashrc para que se inicie automaticamente al iniciar el sistema.

