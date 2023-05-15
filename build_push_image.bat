@REM Instruksi 1.
docker build -t item-app:v1 . 
@REM Memulai proses build Docker image dan memberikan tag "item-app:v1" pada image yang dihasilkan. Titik (.) menunjukkan bahwa Dockerfile terletak di direktori saat ini.

@REM Instruksi 2.
docker images 
@REM Menampilkan daftar semua Docker images yang ada di mesin Docker.

@REM Instruksi 3.
docker tag item-app:v1 arifakasah/item-app:v1 
@REM Memberi nama baru pada Docker image "item-app:v1" dengan nama "arifakasah/item-app:v1" untuk menyesuaikan dengan nama repository di Docker Hub.

@REM Instruksi 4.
docker login 
@REM Login ke Docker Hub dengan mengirimkan username dan password.

@REM Instruksi 5.
docker push arifakasah/item-app:v1 
@REM Mengirimkan Docker image "arifakasah/item-app:v1" ke Docker Hub.
