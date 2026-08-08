<?php
define( 'DB_NAME', 'defaultdb' );
define( 'DB_USER', 'avnadmin' );
define( 'DB_PASSWORD', 'رمز عبور Aiven خود را اینجا بنویسید' );
define( 'DB_HOST', 'mysql-2db61bda-wpapp2026.aivencloud.com:15360' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

// تنظیمات امنیتی پیش‌فرض وردپرس (کلیدهای امنیتی را می‌توانید از وب‌سایت وردپرس بگیرید یا همین مقادیر را بگذارید)
define('AUTH_KEY',         'put your unique phrase here');
define('SECURE_AUTH_KEY',  'put your unique phrase here');
define('LOGGED_IN_KEY',    'put your unique phrase here');
define('NONCE_KEY',        'put your unique phrase here');
define('AUTH_SALT',        'put your unique phrase here');
define('SECURE_AUTH_SALT', 'put your unique phrase here');
define('LOGGED_IN_SALT',   'put your unique phrase here');
define('NONCE_SALT',       'put your unique phrase here');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';
