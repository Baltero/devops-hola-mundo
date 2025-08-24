# Imagen base de Python
FROM python:3.10-slim

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos de tu proyecto al contenedor
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Exponer puerto de la app
EXPOSE 5000

# Comando para iniciar la app
CMD ["python", "app.py"]
