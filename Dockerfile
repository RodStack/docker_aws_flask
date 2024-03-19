# Utiliza una imagen oficial de Python como imagen base
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los contenidos del directorio actual al contenedor en /app
COPY . /app

# Instala los paquetes necesarios especificados en requirements.txt
RUN pip install -r requirements.txt

# Hace el puerto 80 disponible para el mundo exterior al contenedor
EXPOSE 80

# Define la variable de entorno
ENV NAME World

# Ejecuta app.py cuando se lance el contenedor
CMD ["python", "app.py"]
