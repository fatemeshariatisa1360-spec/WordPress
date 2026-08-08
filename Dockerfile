FROM wordpress:latest

# تغییر پورت آپاچی از 80 به 8080 برای Render
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# فعال‌سازی ماژول rewrite
RUN a2enmod rewrite

# ساخت خودکار فایل wp-config.php با تمام تنظیمات امنیتی، پورت و SSL دیتابیس Aiven
RUN echo '<?php \n\
define( "DB_NAME", "defaultdb" ); \n\
define( "DB_USER", "avnadmin" ); \n\
define( "DB_PASSWORD", getenv("AVNS_sDpYzq1awZOW8Pmz2A3") ); \n\
define( "DB_HOST", "mysql-2db61bda-wpapp2026.aivencloud.com:15360" ); \n\
define( "DB_CHARSET", "utf8" ); \n\
define( "DB_COLLATE", "" ); \n\
define( "MYSQL_CLIENT_FLAGS", MYSQL_CLIENT_SSL ); \n\
define("AUTH_KEY", "put your unique phrase here"); \n\
define("SECURE_AUTH_KEY", "put your unique phrase here"); \n\
define("LOGGED_IN_KEY", "put your unique phrase here"); \n\
define("NONCE_KEY", "put your unique phrase here"); \n\
define("AUTH_SALT", "put your unique phrase here"); \n\
define("SECURE_AUTH_SALT", "put your unique phrase here"); \n\
define("LOGGED_IN_SALT", "put your unique phrase here"); \n\
define("NONCE_SALT", "put your unique phrase here"); \n\
$table_prefix = "wp_"; \n\
define( "WP_DEBUG", false ); \n\
if ( ! defined( "ABSPATH" ) ) { \n\
    define( "ABSPATH", __DIR__ . "/" ); \n\
} \n\
require_once ABSPATH . "wp-settings.php";' > /var/www/html/wp-config.php
