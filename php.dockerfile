FROM php:7.4-fpm
MAINTAINER Fellipe Garcias - fellipeg.rjqoor@gmail.com

WORKDIR /var/www

RUN apt-get update && apt-get install -y libmcrypt-dev \
libmagickwand-dev --no-install-recommends \
libzip-dev \
zip \
unzip \
&& docker-php-ext-install pdo_mysql && docker-php-ext-install zip

# Install git
RUN apt-get install -y git
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
EXPOSE 8000

