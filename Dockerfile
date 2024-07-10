FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
    apt-get install apache2 -y
    apt-get install apache2-utils -y
    apt-get clean
EXPOSE 80
RUN echo "Hello From Server" > /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]
