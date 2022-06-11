FROM alpine 

WORKDIR /var/www/localhost/htdocs/

RUN apk --no-cache add apache2 php-apache2 php php-mysqli php-session php8-pecl-memcached \
    && rm index.html && ln -sf /dev/stdout /var/log/apache2/access.log \
    && ln -sf /dev/stderr /var/log/apache2/error.log

COPY app/ .

ENV DB_HOST localhost
ENV DB_PORT 3306
ENV DB_USER admin
ENV DB_PASS admin
ENV DB_NAME php

EXPOSE 80

ENTRYPOINT ["httpd","-D","FOREGROUND"]

