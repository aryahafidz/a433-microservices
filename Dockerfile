# Untuk menggunakan base image Node.js versi 14
FROM node:14 

# Untuk menentukan working directory untuk container
WORKDIR /app

# Untuk menyalin package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Untuk menginstal dependencies yang diperlukan
RUN npm install

# Untuk menyalin seluruh source code ke working directory di container
COPY . .

# Untuk mengekspos port 8080 yang digunakan oleh aplikasi
EXPOSE 3001

# Untuk meng'set Environment Variabel
ENV PORT=3001
ENV AMQP_URL="amqp://guest:guest@localhost:5672"

# Ini adalah saat container dijalankan, jalankan server dengan perintah npm start
CMD ["node", "index.js"]