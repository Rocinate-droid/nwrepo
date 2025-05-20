FROM ubuntu
RUN apt update
RUN apt get apache2 -y
COPY ecomm /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
