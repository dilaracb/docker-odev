# 1. Ubuntu'nun en son sürümü
FROM ubuntu:latest

# 2. Paket listelerini güncelle ve Nginx'i kur
# -y parametresi "evet" diyerek otomatik onaylar
RUN apt-get update && apt-get install -y nginx

# 3. Hazırladığımız index.html dosyasını Nginx'in varsayılan klasörüne kopyala
COPY index.html /var/www/html/index.html

# 4. Nginx'i ön planda çalıştır (Docker kapanmasın diye daemon off yap)
CMD ["nginx", "-g", "daemon off;"]

# 5. 80 portunu dışarı aç
EXPOSE 80
