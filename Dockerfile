# Imagen base — Node 18 Alpine (liviana y estable)
FROM node:18-alpine

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia primero solo package.json para aprovechar cache de Docker
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Puerto que expone la app
EXPOSE 5173

# Comando para desarrollo
CMD ["npm", "run", "dev", "--", "--host"]