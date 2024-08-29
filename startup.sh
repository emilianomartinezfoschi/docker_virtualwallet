#!/bin/bash

# Esperar a que la base de datos esté lista
until nc -z -v -w30 db 5432; do
  echo "Esperando a la base de datos..."
  sleep 1
done
echo "Base de datos está lista"

# Aplicar migraciones
python manage.py migrate

# Recolectar archivos estáticos
python manage.py collectstatic --noinput

# Iniciar el servidor con Gunicorn
gunicorn projecto_billetera.wsgi:application --bind 0.0.0.0:8000