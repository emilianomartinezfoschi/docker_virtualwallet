# Usa una imagen base de Python
FROM python:3.11-slim

# Instala las dependencias necesarias
RUN apt-get update && apt-get install -y libpq-dev gcc netcat-openbsd

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . /app/

RUN chmod +x /app/startup.sh

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que correrá la app
EXPOSE 8000

# Comando para correr la aplicación Django
CMD ["sh", "/app/startup.sh"]


# Comando para correr la aplicación Django
# CMD ["gunicorn", "projecto_billetera.wsgi:application", "--bind","python", "manage.py", "runserver", "0.0.0.0:8000"]
