# Instruksi 1.
FROM node:14-alpine 
# Menggunakan image "node:14-alpine" sebagai base image.

# Instruksi 2.
WORKDIR /app 
# Mendefinisikan direktori kerja yang akan digunakan dalam kontainer.

# Instruksi 3.
COPY . . 
# Menyalin semua file yang ada dalam direktori saat ini ke dalam direktori kerja di dalam kontainer.

# Instruksi 4.
ENV NODE_ENV=production DB_HOST=item-db 
# Menetapkan variabel lingkungan untuk digunakan di dalam kontainer.

# Instruksi 5.
RUN npm install --production --unsafe-perm && npm run build 
# Menjalankan beberapa perintah untuk memasang dependensi dan membangun aplikasi.

# Instruksi 6.
EXPOSE 8080 
# Mengekspos port 8080 untuk digunakan oleh aplikasi.

# Instruksi 7.
CMD ["npm", "start"] 
# Menjalankan perintah "npm start" untuk memulai aplikasi saat kontainer dijalankan.
