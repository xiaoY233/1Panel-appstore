#Reference Links ：https://github.com/docker-library/php/issues/926#issuecomment-567230723

FROM php:8.4.10-fpm

ARG UNAME=www-data
ARG UGROUP=www-data
ARG UID=1000
ARG GID=1000

RUN usermod  --uid $UID $UNAME
RUN groupmod --gid $GID $UGROUP

# define timezone
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN /bin/echo -e "LANG=\"en_US.UTF-8\"" > /etc/default/local

# install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    unzip \
    build-essential \
    libxml2-dev \
    libssl-dev \
    libbz2-dev \
    libcurl4-openssl-dev \
    libjpeg-dev \
    libpng-dev \
    libwebp-dev \
    libfreetype6-dev \
    libxpm-dev \
    libgmp-dev \
    libmcrypt-dev \
    libreadline-dev \
    libxslt1-dev \
    libonig-dev \
    libzip-dev \
    libc-client-dev \
    libkrb5-dev \
    libmemcached-dev \
    libmagickwand-dev --no-install-recommends \
    libicu-dev && \
    rm -rf /var/lib/apt/lists/*



# memcached
RUN pecl install memcached
RUN docker-php-ext-enable memcached

# mcrypt
RUN pecl install mcrypt
RUN docker-php-ext-enable mcrypt

# redis
RUN pecl install redis
RUN docker-php-ext-enable redis

#pecl temporarily does not support PHP8.1 api installation rar
#Reference Links ：https://stackoverflow.com/questions/73564424/error-while-installing-php-rar-extension-on-ubuntu-server
# rar
#RUN pecl install rar
#RUN docker-php-ext-enable rar

# configure
RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp \
&& docker-php-ext-configure intl \
&& docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
&& docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
&& docker-php-ext-configure zip \
&& docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
&& docker-php-ext-install -j "$(nproc)" \
    gd \
    intl \
    mysqli \
    pdo_mysql \
    zip \
    imap \
    fileinfo \
    xsl \
    bcmath \
    gettext \
    exif \
    curl \
    mbstring

# install imagick
RUN pecl install imagick
RUN docker-php-ext-enable imagick

RUN echo "extension=redis.so" >> /usr/local/etc/php/php.ini

WORKDIR /www


