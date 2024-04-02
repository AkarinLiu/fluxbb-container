FROM alpine
WORKDIR /var/www/html
RUN apk update
RUN apk add git apache2 php-apache2 php php-mbstring php-mysqli php-pgsql php-fileinfo php-intl php-gd php-xml php-zip php-soap 
COPY httpd.conf /etc/apache2/httpd.conf
COPY php.ini /etc/php82/php.ini
RUN git clone https://github.com/volkirik/fluxbb /data
VOLUME /var/www/html
COPY docker-entrypoint.sh /docker-entrypoint.sh
EXPOSE 80
ENTRYPOINT [ "/docker-entrypoint.sh" ]