FROM wordpress:latest

# تغییر پورت آپاچی از 80 به 8080 برای Render
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# فعال‌سازی ماژول rewrite
RUN a2enmod rewrite

# کپی مستقیم فایل کانفیگ به داخل پوشه html و تعیین دسترسی صحیح
COPY wp-config.php /var/www/html/wp-config.php
RUN chown www-data:www-data /var/www/html/wp-config.php
