FROM php:8.2-apache

# Proje dosyalarını apache sunucusuna kopyalıyoruz
COPY . /var/www/html/

# Apache portunu Render için ayarlıyoruz
ENV PORT=80
EXPOSE 80

RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
