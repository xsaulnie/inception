<php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', getenv('WORDPRESS_DB_NAME');

/** MySQL database username */
define('DB_USER', getenv('WORDPRESS_DB_USER'));

/** MySQL database password */
define('DB_PASSWORD', getenv('WORDPRESS_ROOT_PASSWORD'));

/** MySQL hostname */
define('DB_HOST', getenv('WORDPRESS_DB_HOST'));

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('AUTH_KEY',		'La pas d esperance nul orietur');
define('SECURE_AUTH_KEY',	'Elle est retrouvee Quoi ? l eternite');
define('LOGGED_IN_KEY',		'Cest la mer allee avec le soleil');
define('NONCE_KEY',		'Ame sentinelle murmurons l aveu');
define('AUTH_SALT',		'De la nuit si nulle et du jour en feu');
define('SECURE_AUTH_SALT',	'Des humains suffrage des communs elans');
define('LOGGED_IN_SALT',	'la tu te degages et voles selon');
define('NONCE_SALT',		'c est la mer allee avec le soleil');

$table_prefix  = 'wp_';
