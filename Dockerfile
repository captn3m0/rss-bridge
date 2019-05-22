FROM php:7-apache

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" \
	&& docker-php-ext-install -j$(nproc) simplexml
COPY ./ /var/www/html/