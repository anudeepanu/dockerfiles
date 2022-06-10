FROM ubuntu:14.04
RUN apt-get update -y && apt-get install apache2 -y && apt-get install unzip -y
ADD site.tar.gz /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

