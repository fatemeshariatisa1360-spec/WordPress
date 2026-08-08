FROM wordpress:latest

# تغییر پورت آپاچی از 80 به 8080 برای Render
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# فعال‌سازی ماژول rewrite
RUN a2enmod rewrite
