FROM ubuntu:14.04
RUN apt-get update -y && apt-get install unzip -y && apt-get install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/fanadesh.zip /opt
WORKDIR /opt
RUN unzip fanadesh.zip && rm -rf fanadesh.zip
WORKDIR fanadesh-html
RUN ls -lrt
RUN pwd
RUN cp -r * /var/www/html/
EXPOSE 80
