#!/bin/bash
# Script de Verificacion de Red 
# 1. Direcciones de prueba
GATEWAY=$(ip route | grep default | awk '{print $3}')
INTERNET="8.8.8.8" # DNS de Google

echo "=========================================="
echo " CHEQUEO DE RED: $(date +'%H:%M:%S')"
echo "=========================================="

# 2. Prueba de conexion local (Router/Gateway)
echo -n "[1/2] Probando conexion con el Router ($GATEWAY)... "
if ping -c 1 -W 2 $GATEWAY > /dev/null 2>&1; then
    echo "OK"
else
    echo "FALLO (Revisa el cable o la configuracion de la VM)"
fi

# 3. Prueba de conexion a Internet
echo -n "[2/2] Probando acceso a Internet ($INTERNET)... "
if ping -c 1 -W 2 $INTERNET > /dev/null 2>&1; then
    echo "OK (Conectado)"
else
    echo "SIN INTERNET (Posible problema de DNS o salida)"
fi

echo "=========================================="
