FROM composer
WORKDIR /app
RUN composer config -g repositories.packagist composer https://packagist.jp
COPY ./composer.json /app/composer.json
RUN composer install -vvv
COPY . /app
CMD php main.php