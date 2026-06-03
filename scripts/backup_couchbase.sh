#!/bin/bash
CLUSTER="localhost:8091"
USER="Administrator"
PASS="Cruz azul #14"
BACKUP_DIR="/tmp/couchbase_backups"
REPO_NAME="repo_proyecto"

echo "======================================================"
echo " Iniciando proceso de respaldo de Couchbase..."
echo "======================================================"

if [ ! -d "$BACKUP_DIR/$REPO_NAME" ]; then
    echo "[+] Repositorio no encontrado. Creando configuración inicial..."
    /opt/couchbase/bin/cbbackupmgr config --archive $BACKUP_DIR --repo $REPO_NAME
fi

echo "[+] Ejecutando cbbackupmgr (Automáticamente detecta Full o Incremental)..."
/opt/couchbase/bin/cbbackupmgr backup --archive $BACKUP_DIR --repo $REPO_NAME --cluster $CLUSTER --username $USER --password "$PASS"

echo "======================================================"
echo " Respaldo finalizado con éxito."
echo "======================================================"
