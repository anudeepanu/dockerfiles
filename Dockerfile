FROM ubuntu:14.04
RUN apt-get update -y && apt-get install apache2 -y && apt-get install unzip -y
ADD site.tar.gz /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
--------
FROM ubuntu:14.04
RUN apt-get update -y && apt-get install unzip -y && apt-get install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/fanadesh.zip /opt
WORKDIR /opt
RUN unzip fanadesh.zip
RUN cd fanadesh-html
RUN cp -r * /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
-------
