FROM ubuntu/apache2 

RUN apt-get update 


RUN apt-get install -y \
    zip \
    unzip \
    tree \
    vim \
    php8.1 \
    php8.1-mysql \
    php8.1-mbstring \
    php8.1-xml \
    php8.1-bcmath \
    php8.1-common \
    php8.1-curl 
WORKDIR /var/www 

RUN mkdir /var/www/application 

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer 

