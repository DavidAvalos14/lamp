#!/bin/bash
# Uso: bash deploy.sh

echo 'Bajamos repositorio actualizado'
# Copiamos código actualizado de GitHub
git pull origin main

echo 'Detenemos contenedores de la Aplicación'
# Detenemos contenedores
docker-compose down

echo 'Inicializamos contenedores y reconstruimos imagen actualizada'
# Iniciamos contenedores y reconstruimos
docker-compose -f docker-compose.production.yml up -d --build

echo 'Actualizacion finalizada'