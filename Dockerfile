FROM wordpress:latest

RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

COPY wp-config.php /var/www/html/wp-config.php
RUN chown www-data:www-data /var/www/html/wp-config.php

CMD ["apache2-foreground"]
