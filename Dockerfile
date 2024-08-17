# Usa una imagen base oficial de Node.js
FROM node:14-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y el archivo package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Si estás construyendo tu código para producción
# RUN npm ci --only=production

# Copia el código fuente de la aplicación al contenedor
COPY . .

# Expone el puerto 4000 para acceder a la aplicación
EXPOSE 4000


