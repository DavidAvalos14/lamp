# Copiamos código actualizado
git pull origin main

# Detenemos contenedores
docker-compose down

# Iniciamos contenedores y reconstruimos
docker-compose -f docker-compose.production.yml up -d --build