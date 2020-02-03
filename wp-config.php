<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'travelcream' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'Rhenj567' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'fUZXv#8T=eEbLk/h;J?nafu^CNJP=&C}XyI{`QG-Q~TU/:Ptb745k,RHra[0J_J}' );
define( 'SECURE_AUTH_KEY',  '*h3~&C*)GQH]0hjaa>+.G?0q~!Ns;OW1xkn8m1N=6Uql_8|E2t%([.Vyv{Hx0*N(' );
define( 'LOGGED_IN_KEY',    'Ph{*;=r44%hwbHL Fj+m6yKm@+4q/[YO-4,V/a<;+f(HOj|iTvx_dj(i<ol&Sy{9' );
define( 'NONCE_KEY',        'nI~2oZpfgL1.{Wl9Z[t[-D~MN(biDj-~R+a=i{aJ(9f<P#.VjEhX!MEZHE2d$CLi' );
define( 'AUTH_SALT',        'k|l-nz=H<LFs*;y@2?w%O/Z0c_;6*ey5(s&2DN>SDHw+)=_RBt/C[xAqI8u%7h>V' );
define( 'SECURE_AUTH_SALT', 'Vsgzb/guUOnXfk_B|S:9W),k2w5#Y|agG~IrJ6My{>dI;5[fDG+!Ix]s?>+0ZP}A' );
define( 'LOGGED_IN_SALT',   'r6CDAP$9c}w.^(4BEBNDPY[b)`NG`6j,S9k2`a_cY7>MjB.urc>H<6;TLa(|i> ,' );
define( 'NONCE_SALT',       ';lB5<3!l13x:.)]:kql(U~fCxf!mz!$6Z<-<-;,[@u)IQlZ.^6r@Kq^m<(VXV1db' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
