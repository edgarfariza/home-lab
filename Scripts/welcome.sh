#!/bin/bash
#1. Mostrar informacion del usuario
echo "Usuario actual: $(whoami)"
echo "Host: $(hostname)"
echo "IP Local: $(hostname -I | awk '{print $1}')"
# 2. Mostrar fecha y hora
echo "Fecha y hora actual:"
date

# 3. Mostrar calendario del mes
echo ""
cal

# 4. Mostrar tareas pendientes
# Tengo un archivo llamado tasklist.txt donde apunto las tareas pendientes que apunto previamente
echo "--------------------------"
echo "TAREAS PENDIENTES:"
if [ -f /home/edgar/Scripts/tasklist.txt ]; then
    cat /home/edgar/Scripts/tasklist.txt
else
    echo "No hay archivo de tareas detectado."
fi
echo "--------------------------"
# 5. Fecha ultimo backup
echo "Ultimo backup realizado:"
ls -lh /var/backup | tail -n 1 | awk '{print $6, $7, $9}'

#Para que el archivo se ejecute automaticamente cada vez que inicio el sistema anado la ruta bash /home/edgar/backup/welcome.sh en el archivo /home/edgar/.bashrc al final.
