FROM php:8.0-apache 

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions gd pdo_mysql mysqli redis imagick zip
    
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - 
RUN apt-get install -y nodejs
COPY ./apache/sites-available /etc/apache2/sites-available
COPY ./apache/ports.conf /etc/apache2/ports.conf

RUN a2dissite 000-default.conf
RUN a2ensite 000-host.conf
WORKDIR /var/www/html/techblog/backend