FROM wordpress:latest

# تغییر پورت پیش‌فرض آپاچی از 80 به 8080 برای سازگاری کامل با پلتفرم Render
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# فعال‌سازی ماژول rewrite برای کارکرد صحیح پیوندهای یکتا و پنل مدیریت وردپرس
RUN a2enmod rewrite
