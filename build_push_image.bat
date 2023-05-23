@REM # Instruksi 1.
docker build -t item-app:v1 .
@REM # Memulai proses build Docker image dan memberikan tag "item-app:v1" pada image yang dihasilkan. Titik (.) menunjukkan bahwa Dockerfile terletak di direktori saat ini.

@REM # Instruksi 2.
docker images
@REM # Menampilkan daftar semua Docker images yang ada di mesin Docker.

@REM # Instruksi 3.
docker tag item-app:v1 docker.pkg.github.com/arifakasah/item-app/item-app:v1
@REM # Memberi nama baru pada Docker image "item-app:v1" dengan nama "docker.pkg.github.com/arifakasah/item-app/item-app:v1" untuk menyesuaikan dengan nama repository di GitHub Packages.

@REM # Instruksi 4.
docker login docker.pkg.github.com -u ArifAkasah -p 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
@REM # Login ke GitHub Packages dengan mengirimkan nama pengguna dan token akses pribadi sebagai argumen. 

@REM # Instruksi 5.
docker push docker.pkg.github.com/arifakasah/item-app/item-app:v1
@REM # Mengirimkan Docker image "docker.pkg.github.com/arifakasah/item-app/item-app:v1" ke GitHub Packages.
