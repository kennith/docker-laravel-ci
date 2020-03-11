FROM php:7.2
LABEL maintainer="kennith.leung@gmail.com"

RUN apt-get update
RUN apt-get install git awscli libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev -yqq
RUN docker-php-ext-install mbstring pdo_mysql curl json intl gd xml zip bz2 opcache
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN apt-get install unzip -yqq
RUN apt-get install wget -yqq
RUN wget https://releases.hashicorp.com/packer/1.5.1/packer_1.5.1_linux_amd64.zip -q
RUN unzip packer_1.5.1_linux_amd64.zip -d /usr/local/bin/