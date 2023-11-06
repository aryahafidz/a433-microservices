# Untuk mengambil image node:14
FROM node:14-alpine

# Untuk membuat workdir app
WORKDIR /app

# Untuk mengcopy semua file ke app
COPY . /app

# Untuk membuat node environment
ENV NODE_ENV=production DB_HOST=item-db

# Untuk menginstall dependencies
RUN npm install --production --unsafe-perm && npm run build

# Untuk publish port 8080
EXPOSE 8080

# Untuk menjalankan perintah npm start 
CMD ["npm","start"]
