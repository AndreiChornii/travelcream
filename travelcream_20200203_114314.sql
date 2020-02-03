-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "wp_commentmeta" -------------------------------
CREATE TABLE `wp_commentmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`comment_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_comments" ----------------------------------
CREATE TABLE `wp_comments` ( 
	`comment_ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`comment_post_ID` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`comment_author` TinyText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_author_email` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_author_url` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_author_IP` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_date` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_date_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_content` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_karma` Int( 11 ) NOT NULL DEFAULT 0,
	`comment_approved` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
	`comment_agent` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_type` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`user_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY ( `comment_ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_links" -------------------------------------
CREATE TABLE `wp_links` ( 
	`link_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`link_url` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_image` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_target` VarChar( 25 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_description` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_visible` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
	`link_owner` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 1,
	`link_rating` Int( 11 ) NOT NULL DEFAULT 0,
	`link_updated` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`link_rel` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_notes` MediumText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_rss` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	PRIMARY KEY ( `link_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_options" -----------------------------------
CREATE TABLE `wp_options` ( 
	`option_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`option_name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`option_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`autoload` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
	PRIMARY KEY ( `option_id` ),
	CONSTRAINT `option_name` UNIQUE( `option_name` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 181;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_postmeta" ----------------------------------
CREATE TABLE `wp_postmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`post_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 15;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_posts" -------------------------------------
CREATE TABLE `wp_posts` ( 
	`ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`post_author` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`post_date` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_date_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_excerpt` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
	`comment_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
	`ping_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
	`post_password` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_name` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`to_ping` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`pinged` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_modified` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_modified_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content_filtered` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`guid` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`menu_order` Int( 11 ) NOT NULL DEFAULT 0,
	`post_type` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
	`post_mime_type` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_count` BigInt( 20 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 16;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_term_relationships" ------------------------
CREATE TABLE `wp_term_relationships` ( 
	`object_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`term_taxonomy_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`term_order` Int( 11 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `object_id`, `term_taxonomy_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_term_taxonomy" -----------------------------
CREATE TABLE `wp_term_taxonomy` ( 
	`term_taxonomy_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`term_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`taxonomy` VarChar( 32 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`description` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`count` BigInt( 20 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `term_taxonomy_id` ),
	CONSTRAINT `term_id_taxonomy` UNIQUE( `term_id`, `taxonomy` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_termmeta" ----------------------------------
CREATE TABLE `wp_termmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`term_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_terms" -------------------------------------
CREATE TABLE `wp_terms` ( 
	`term_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`slug` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`term_group` BigInt( 10 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `term_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_usermeta" ----------------------------------
CREATE TABLE `wp_usermeta` ( 
	`umeta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `umeta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 20;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_users" -------------------------------------
CREATE TABLE `wp_users` ( 
	`ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_login` VarChar( 60 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_pass` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_nicename` VarChar( 50 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_email` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_url` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_registered` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`user_activation_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_status` Int( 11 ) NOT NULL DEFAULT 0,
	`display_name` VarChar( 250 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	PRIMARY KEY ( `ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- Dump data of "wp_commentmeta" ---------------------------
-- ---------------------------------------------------------


-- Dump data of "wp_comments" ------------------------------
INSERT INTO `wp_comments`(`comment_ID`,`comment_post_ID`,`comment_author`,`comment_author_email`,`comment_author_url`,`comment_author_IP`,`comment_date`,`comment_date_gmt`,`comment_content`,`comment_karma`,`comment_approved`,`comment_agent`,`comment_type`,`comment_parent`,`user_id`) VALUES 
( '1', '1', 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-01 12:18:38', '2020-02-01 09:18:38', 'Привет! Это комментарий.
Чтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.
Аватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', '0', '1', '', '', '0', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_links" ---------------------------------
-- ---------------------------------------------------------


-- Dump data of "wp_options" -------------------------------
INSERT INTO `wp_options`(`option_id`,`option_name`,`option_value`,`autoload`) VALUES 
( '1', 'siteurl', 'http://localhost:3001', 'yes' ),
( '2', 'home', 'http://localhost:3001', 'yes' ),
( '3', 'blogname', 'travelcream', 'yes' ),
( '4', 'blogdescription', 'Ещё один сайт на WordPress', 'yes' ),
( '5', 'users_can_register', '0', 'yes' ),
( '6', 'admin_email', 'andrei.chornii@gmail.com', 'yes' ),
( '7', 'start_of_week', '1', 'yes' ),
( '8', 'use_balanceTags', '0', 'yes' ),
( '9', 'use_smilies', '1', 'yes' ),
( '10', 'require_name_email', '1', 'yes' ),
( '11', 'comments_notify', '1', 'yes' ),
( '12', 'posts_per_rss', '10', 'yes' ),
( '13', 'rss_use_excerpt', '0', 'yes' ),
( '14', 'mailserver_url', 'mail.example.com', 'yes' ),
( '15', 'mailserver_login', 'login@example.com', 'yes' ),
( '16', 'mailserver_pass', 'password', 'yes' ),
( '17', 'mailserver_port', '110', 'yes' ),
( '18', 'default_category', '1', 'yes' ),
( '19', 'default_comment_status', 'open', 'yes' ),
( '20', 'default_ping_status', 'open', 'yes' ),
( '21', 'default_pingback_flag', '1', 'yes' ),
( '22', 'posts_per_page', '10', 'yes' ),
( '23', 'date_format', 'd.m.Y', 'yes' ),
( '24', 'time_format', 'H:i', 'yes' ),
( '25', 'links_updated_date_format', 'd.m.Y H:i', 'yes' ),
( '26', 'comment_moderation', '0', 'yes' ),
( '27', 'moderation_notify', '1', 'yes' ),
( '28', 'permalink_structure', '', 'yes' ),
( '29', 'rewrite_rules', '', 'yes' ),
( '30', 'hack_file', '0', 'yes' ),
( '31', 'blog_charset', 'UTF-8', 'yes' ),
( '32', 'moderation_keys', '', 'no' ),
( '33', 'active_plugins', 'a:0:{}', 'yes' ),
( '34', 'category_base', '', 'yes' ),
( '35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes' ),
( '36', 'comment_max_links', '2', 'yes' ),
( '37', 'gmt_offset', '3', 'yes' ),
( '38', 'default_email_category', '1', 'yes' ),
( '39', 'recently_edited', '', 'no' ),
( '40', 'template', 'twentytwenty', 'yes' ),
( '41', 'stylesheet', 'twentytwenty', 'yes' ),
( '42', 'comment_whitelist', '1', 'yes' ),
( '43', 'blacklist_keys', '', 'no' ),
( '44', 'comment_registration', '0', 'yes' ),
( '45', 'html_type', 'text/html', 'yes' ),
( '46', 'use_trackback', '0', 'yes' ),
( '47', 'default_role', 'subscriber', 'yes' ),
( '48', 'db_version', '45805', 'yes' ),
( '49', 'uploads_use_yearmonth_folders', '1', 'yes' ),
( '50', 'upload_path', '', 'yes' ),
( '51', 'blog_public', '1', 'yes' ),
( '52', 'default_link_category', '2', 'yes' ),
( '53', 'show_on_front', 'posts', 'yes' ),
( '54', 'tag_base', '', 'yes' ),
( '55', 'show_avatars', '1', 'yes' ),
( '56', 'avatar_rating', 'G', 'yes' ),
( '57', 'upload_url_path', '', 'yes' ),
( '58', 'thumbnail_size_w', '150', 'yes' ),
( '59', 'thumbnail_size_h', '150', 'yes' ),
( '60', 'thumbnail_crop', '1', 'yes' ),
( '61', 'medium_size_w', '300', 'yes' ),
( '62', 'medium_size_h', '300', 'yes' ),
( '63', 'avatar_default', 'mystery', 'yes' ),
( '64', 'large_size_w', '1024', 'yes' ),
( '65', 'large_size_h', '1024', 'yes' ),
( '66', 'image_default_link_type', 'none', 'yes' ),
( '67', 'image_default_size', '', 'yes' ),
( '68', 'image_default_align', '', 'yes' ),
( '69', 'close_comments_for_old_posts', '0', 'yes' ),
( '70', 'close_comments_days_old', '14', 'yes' ),
( '71', 'thread_comments', '1', 'yes' ),
( '72', 'thread_comments_depth', '5', 'yes' ),
( '73', 'page_comments', '0', 'yes' ),
( '74', 'comments_per_page', '50', 'yes' ),
( '75', 'default_comments_page', 'newest', 'yes' ),
( '76', 'comment_order', 'asc', 'yes' ),
( '77', 'sticky_posts', 'a:0:{}', 'yes' ),
( '78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '79', 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes' ),
( '80', 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes' ),
( '81', 'uninstall_plugins', 'a:0:{}', 'no' ),
( '82', 'timezone_string', '', 'yes' ),
( '83', 'page_for_posts', '0', 'yes' ),
( '84', 'page_on_front', '0', 'yes' ),
( '85', 'default_post_format', '0', 'yes' ),
( '86', 'link_manager_enabled', '0', 'yes' ),
( '87', 'finished_splitting_shared_terms', '1', 'yes' ),
( '88', 'site_icon', '0', 'yes' ),
( '89', 'medium_large_size_w', '768', 'yes' ),
( '90', 'medium_large_size_h', '0', 'yes' ),
( '91', 'wp_page_for_privacy_policy', '3', 'yes' ),
( '92', 'show_comments_cookies_opt_in', '1', 'yes' ),
( '93', 'admin_email_lifespan', '1596100713', 'yes' ),
( '94', 'initial_db_version', '45805', 'yes' ),
( '95', 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes' ),
( '96', 'fresh_site', '0', 'yes' ),
( '97', 'WPLANG', 'ru_RU', 'yes' ),
( '98', 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes' ),
( '99', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '100', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '101', 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '102', 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes' ),
( '103', 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes' ),
( '104', 'cron', 'a:6:{i:1580725129;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1580727161;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1580727169;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1580764729;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1580807929;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes' ),
( '105', 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '106', 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '107', 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '108', 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '109', 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '110', 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '111', 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '112', 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '113', 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '115', 'recovery_keys', 'a:0:{}', 'yes' ),
( '122', '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1580721644;s:15:"version_checked";s:5:"5.3.2";s:12:"translations";a:0:{}}', 'no' ),
( '123', '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1580716035;s:7:"checked";a:3:{s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:12:"twentytwenty";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no' ),
( '124', '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1580716035;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.1.3";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no' ),
( '125', 'theme_mods_twentytwenty', 'a:1:{s:18:"custom_css_post_id";i:12;}', 'yes' ),
( '127', '_site_transient_timeout_browser_384d9bde9a547125a6530b4281b98462', '1581159162', 'no' ),
( '128', '_site_transient_browser_384d9bde9a547125a6530b4281b98462', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"72.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no' ),
( '129', '_site_transient_timeout_php_check_51796b6af6783f1f9057e12ad1723461', '1581159169', 'no' ),
( '130', '_site_transient_php_check_51796b6af6783f1f9057e12ad1723461', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no' ),
( '144', 'can_compress_scripts', '1', 'no' ),
( '179', '_site_transient_timeout_theme_roots', '1580723444', 'no' ),
( '180', '_site_transient_theme_roots', 'a:3:{s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";}', 'no' );
-- ---------------------------------------------------------


-- Dump data of "wp_postmeta" ------------------------------
INSERT INTO `wp_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) VALUES 
( '1', '2', '_wp_page_template', 'default' ),
( '2', '3', '_wp_page_template', 'default' ),
( '3', '5', '_edit_lock', '1580554537:1' ),
( '4', '6', '_edit_lock', '1580554806:1' ),
( '5', '7', '_edit_lock', '1580554970:1' ),
( '6', '8', '_edit_lock', '1580567327:1' ),
( '7', '8', '_wp_page_template', 'templates/tpl_travelcream.php' ),
( '8', '8', '_edit_last', '1' ),
( '9', '11', '_edit_lock', '1580570673:1' ),
( '10', '11', '_wp_trash_meta_status', 'publish' ),
( '11', '11', '_wp_trash_meta_time', '1580570686' ),
( '12', '14', '_edit_lock', '1580571213:1' ),
( '13', '14', '_wp_trash_meta_status', 'publish' ),
( '14', '14', '_wp_trash_meta_time', '1580571224' );
-- ---------------------------------------------------------


-- Dump data of "wp_posts" ---------------------------------
INSERT INTO `wp_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) VALUES 
( '1', '1', '2020-02-01 12:18:38', '2020-02-01 09:18:38', '<!-- wp:paragraph -->
<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>
<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-02-01 12:18:38', '2020-02-01 09:18:38', '', '0', 'http://localhost:3001/?p=1', '0', 'post', '', '1' ),
( '2', '1', '2020-02-01 12:18:38', '2020-02-01 09:18:38', '<!-- wp:paragraph -->
<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>...или так:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>Перейдите <a href="http://localhost:3001/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>
<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-02-01 12:18:38', '2020-02-01 09:18:38', '', '0', 'http://localhost:3001/?page_id=2', '0', 'page', '', '0' ),
( '3', '1', '2020-02-01 12:18:38', '2020-02-01 09:18:38', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost:3001.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email ("хеш") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность "Запомнить меня", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-01 12:18:38', '2020-02-01 09:18:38', '', '0', 'http://localhost:3001/?page_id=3', '0', 'page', '', '0' ),
( '4', '1', '2020-02-01 13:52:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-01 13:52:49', '0000-00-00 00:00:00', '', '0', 'http://localhost:3001/?p=4', '0', 'post', '', '0' ),
( '5', '1', '2020-02-01 13:53:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-01 13:53:21', '0000-00-00 00:00:00', '', '0', 'http://localhost:3001/?page_id=5', '0', 'page', '', '0' ),
( '6', '1', '2020-02-01 14:01:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-01 14:01:19', '0000-00-00 00:00:00', '', '0', 'http://localhost:3001/?page_id=6', '0', 'page', '', '0' ),
( '7', '1', '2020-02-01 14:02:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-01 14:02:58', '0000-00-00 00:00:00', '', '0', 'http://localhost:3001/?page_id=7', '0', 'page', '', '0' ),
( '8', '1', '2020-02-01 14:06:09', '2020-02-01 11:06:09', '', 'travelcream_page', '', 'publish', 'closed', 'closed', '', 'travelcream_page', '', '', '2020-02-01 17:28:47', '2020-02-01 14:28:47', '', '0', 'http://localhost:3001/?page_id=8', '0', 'page', '', '0' ),
( '9', '1', '2020-02-01 14:06:09', '2020-02-01 11:06:09', '', 'ggg', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-01 14:06:09', '2020-02-01 11:06:09', '', '8', 'http://localhost:3001/?p=9', '0', 'revision', '', '0' ),
( '10', '1', '2020-02-01 17:28:47', '2020-02-01 14:28:47', '', 'travelcream_page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-01 17:28:47', '2020-02-01 14:28:47', '', '8', 'http://localhost:3001/?p=10', '0', 'revision', '', '0' ),
( '11', '1', '2020-02-01 18:24:46', '2020-02-01 15:24:46', '{
    "custom_css[twentytwenty]": {
        "value": "*{\\n    font-family: Arial, Helvetica, sans-serif;\\n    box-sizing: border-box;\\n}\\n\\n@font-face {\\n    font-family: \'andesitalicw04-regularregular\';\\n    src: url(\'webfontkit-20191007-070737/andes_italic_w04_regular-webfont.woff2\') format(\'woff2\'),\\n         url(\'webfontkit-20191007-070737/andes_italic_w04_regular-webfont.woff\') format(\'woff\');\\n    font-weight: normal;\\n    font-style: normal;\\n\\n}\\n\\nbody, ul{\\n    margin: 0;\\n    padding: 0;\\n}\\n\\nbody{\\n    border-top: 8px solid #82699d;\\n    border-bottom: 8px solid #82699d;\\n    max-height: 1500px;\\n}\\n\\nli{\\n    list-style: none;\\n}\\n\\na{\\n    text-decoration: none;\\n}\\n\\n#container{\\n    max-width: 1035px;\\n    height: 90%;\\n    margin: auto;\\n}\\n\\nheader{\\n    display: flex;\\n    flex-wrap: wrap;\\n    justify-content: space-between;\\n    align-items: center;\\n    padding-top: 25px;\\n}\\n\\n#left_part{\\n    display: flex;\\n    justify-content: flex-start;\\n    align-items: center;\\n}\\n\\n#m{\\n    position: relative;\\n    width: 30px;\\n    color: #ffffff;\\n    font-size: 23px;\\n    z-index: 100;\\n    margin-left: 23px;\\n    text-align: center;\\n    font-weight: bold;\\n}\\n\\n#logo{\\n    position: relative;\\n    width: 245px;\\n    display: flex;\\n    font-size: 30px;\\n    align-items: center;\\n    justify-content: flex-end;\\n    padding-right: 35px;\\n    text-transform: uppercase;\\n    color: #a292b3;\\n    margin-left: -95px;\\n    }\\n\\n#logo::before{\\n    content: url(img/Group-4.png);\\n}\\n\\n#header-menu ul{\\n    display: flex;\\n    flex-wrap: wrap;\\n}\\n\\n#header-menu ul li{\\n    margin-left:50px;\\n}\\n\\n#header-menu ul li a{\\n    display: block;\\n    padding: 15px 0 15px 0px;\\n    color: #818181;\\n    margin: 5px;\\n    height: 55px;\\n}\\n\\n#header-menu ul li a::before{\\n    padding-right: 7px;\\n}\\n\\n#header-menu ul li#home a::before{\\n    content: url(img/Shape-2.png);\\n}\\n\\n#header-menu ul li#about a::before{\\n    content: url(img/Shape-3.png);\\n}\\n\\n#header-menu ul li#services a::before{\\n    content: url(img/Shape-4.png);\\n}\\n\\n#header-menu ul li#contact a::before{\\n    content: url(img/Shape-5.png);\\n}\\n\\n#header-menu ul li#contact a{\\n    padding-top: 21px;\\n}\\n\\n#banner{\\n    position: relative;\\n}\\n\\n#banner img{\\n    width: 100%;\\n    /* border: 1px solid black; */\\n}\\n\\n#banner #navigation{\\n    position: absolute;\\n    top: 40%;\\n    /* border: 1px solid black; */\\n    width: 100%;\\n    height: 20%;\\n    display: flex;\\n    justify-content: space-between;\\n    align-items: center;\\n}\\n\\n#banner #navigation .btn{\\n    color: #fff;\\n    background-color: #83699d;\\n    padding: 10px 3px;\\n    font-size: 22px;\\n    cursor: pointer;\\n    border: none;\\n}\\n\\n#banner #navigation .btn:hover{\\n    background-color: #59466d;\\n}\\n\\n#banner #navigation #MintoText{\\n    display: flex;\\n    flex-direction: column;\\n    text-align: center;\\n}\\n\\n#banner #navigation #MintoText span{\\n    color: #fff;\\n    font-size: 30px;\\n}\\n\\n#banner #navigation #MintoText #minto{\\n    font-size: 16vh;\\n    font-family:andesitalicw04-regularregular;\\n    text-shadow: #000 -2px 3px;\\n}\\n\\n#container #present_text {\\n    text-align: center;\\n    border-top: 1px solid #bfbfbf;\\n    border-bottom: 1px solid #bfbfbf;\\n    font-style: italic;\\n    font-size: 20px;\\n    line-height: 4vh;\\n    font-weight: 500;\\n    padding: 20px 35px;\\n    margin: auto;\\n    margin-top: 40px;\\n    margin-bottom: 30px;\\n    width: 98%;\\n}\\n\\n#container #present_text span{\\n    color: #83699d;\\n}\\n\\n#banners_bottom{\\n    display: flex;\\n    flex-wrap: wrap;\\n}\\n\\n#banners_bottom #bn-left{\\n    width:34%;\\n}\\n\\n#banners_bottom #bn-right{\\n    width:66%;\\n}\\n\\n#banners_bottom #bn-left #wrap {\\n    margin-right: 10px;\\n    position: relative;\\n    height: 370px;\\n}\\n\\n#banners_bottom #bn-left #wrap .round_white{\\n    position: absolute;\\n    max-width: 100%;\\n}\\n\\n#banners_bottom #bn-left #wrap .round{\\n    max-width: 85%;\\n    position: absolute;\\n    width: 100%;\\n    left: 12px;\\n    top: 12px;\\n}\\n\\n#banners_bottom #bn-right #wrap {\\n    margin-left: 10px;\\n    display: flex;\\n    flex-wrap: wrap;\\n    justify-content: flex-start;\\n    height: 370px;\\n}\\n\\n#banners_bottom #bn-right #wrap h1 {\\n    margin-bottom: 0;\\n    margin-top: 50px;\\n}\\n\\n#banners_bottom #bn-right #wrap p {\\n    margin-right: 50px;\\n    margin-bottom: 0;\\n    margin-top: 0;\\n}\\n\\n#banners_bottom #bn-right #wrap #read{\\n    margin-top: 0;\\n    font-style: italic;\\n    font-size: 12px;\\n    width: 100%;\\n    display: inline-block;\\n}\\n\\n#banners_bottom #bn-right #wrap #read span, \\n#banners_bottom #bn-right #wrap #read button{\\n    float:right;\\n}\\n\\n#banners_bottom #bn-right #wrap #read button{\\n    cursor: pointer;\\n    border: none;\\n    background-color: #fff;\\n}\\n\\n#banners_bottom #bn-right #wrap #read button i{\\n    vertical-align: text-top;\\n    font-weight: bold;\\n}\\n\\n#where{\\n    display: flex;\\n    flex-wrap: wrap;\\n    justify-content: space-between;\\n    margin-bottom: 5px;\\n}\\n\\n#where p{\\n    margin: 0;\\n    font-size: 17px;\\n    margin-bottom: 20px;\\n}\\n\\n#bottom-menu ul{\\n    display: flex;\\n    flex-wrap: wrap;\\n    justify-content: space-between;\\n    margin-bottom: 60px;\\n}\\n\\n#bottom-menu ul li{\\n    border: 1px solid #bfbfbf;\\n    flex-grow: 1;\\n    background-color:#f5f5f5;\\n}\\n\\n#bottom-menu ul li a{\\n    display: block;\\n    max-width: 70%;\\n    margin:auto;\\n    margin-top: 10px;\\n}\\n\\nfooter{\\n    background-color: #e8e8e8;\\n    padding: 20px;\\n    }\\n\\nfooter .wrap{\\n    max-width: 1035px;\\n    display: flex;\\n    flex-wrap: wrap;\\n    justify-content: space-between;\\n    margin: auto;\\n}\\n\\n#copyright{\\n    display: flex;\\n    font-size: 14px;\\n    align-items: center;\\n}\\n\\n#copyright span{\\n    margin-left: 5px;\\n}\\n\\n#social a{\\n    margin-left: 20px;\\n}\\n\\n#social i{\\n    color: #fff;\\n    width: 30px;\\n    height: 30px;\\n    padding-top:7px;\\n    border-radius: 50%;\\n    background-color: #82699d;\\n    text-align: center;\\n    vertical-align: middle;\\n    font-size:20px;\\n}\\n\\n@media(max-width: 700px){\\n    body{\\n        max-height: 1800px;\\n    }\\n\\n    #where{\\n        margin-top: 200px;\\n    } \\n\\n    #container #present_text {\\n        line-height: 30px;\\n    }\\n\\n    #banners_bottom{\\n        flex-direction:column;\\n    }\\n\\n    #banner #navigation #MintoText span{\\n        font-size: 20px;\\n    }\\n\\n    #banner #navigation #MintoText #minto{\\n        font-size: 12vh;\\n    }\\n\\n    #banners_bottom #bn-left{\\n        width: 66%;\\n        margin: auto;\\n    }\\n\\n    #banners_bottom #bn-right {\\n        width: 100%;\\n    }\\n}\\n\\n@media(max-width: 400px) {\\n    body{\\n        max-height: 2500px;\\n    }\\n\\n    #where{\\n        margin-top: 400px;\\n    }\\n\\n    #container #present_text {\\n        line-height: 30px;\\n    }\\n\\n    #banners_bottom{\\n        flex-direction:column;\\n    }\\n\\n    #banner #navigation #MintoText span{\\n        font-size: 20px;\\n    }\\n\\n    #banner #navigation #MintoText #minto{\\n        font-size: 8vh;\\n    }\\n\\n    #banners_bottom #bn-left{\\n        width: 66%;\\n        margin: auto;\\n    }\\n\\n    #banners_bottom #bn-right {\\n        width: 100%;\\n    }\\n}",
        "type": "custom_css",
        "user_id": 1,
        "date_modified_gmt": "2020-02-01 15:22:18"
    }
}', '', '', 'trash', 'closed', 'closed', '', 'd9198a8f-84ea-4687-bff2-c0ee3e645745', '', '', '2020-02-01 18:24:46', '2020-02-01 15:24:46', '', '0', 'http://localhost:3001/?p=11', '0', 'customize_changeset', '', '0' ),
( '12', '1', '2020-02-01 18:24:46', '2020-02-01 15:24:46', '', 'twentytwenty', '', 'publish', 'closed', 'closed', '', 'twentytwenty', '', '', '2020-02-01 18:33:44', '2020-02-01 15:33:44', '', '0', 'http://localhost:3001/?p=12', '0', 'custom_css', '', '0' ),
( '13', '1', '2020-02-01 18:24:46', '2020-02-01 15:24:46', '*{
    font-family: Arial, Helvetica, sans-serif;
    box-sizing: border-box;
}

@font-face {
    font-family: \'andesitalicw04-regularregular\';
    src: url(\'webfontkit-20191007-070737/andes_italic_w04_regular-webfont.woff2\') format(\'woff2\'),
         url(\'webfontkit-20191007-070737/andes_italic_w04_regular-webfont.woff\') format(\'woff\');
    font-weight: normal;
    font-style: normal;

}

body, ul{
    margin: 0;
    padding: 0;
}

body{
    border-top: 8px solid #82699d;
    border-bottom: 8px solid #82699d;
    max-height: 1500px;
}

li{
    list-style: none;
}

a{
    text-decoration: none;
}

#container{
    max-width: 1035px;
    height: 90%;
    margin: auto;
}

header{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
    padding-top: 25px;
}

#left_part{
    display: flex;
    justify-content: flex-start;
    align-items: center;
}

#m{
    position: relative;
    width: 30px;
    color: #ffffff;
    font-size: 23px;
    z-index: 100;
    margin-left: 23px;
    text-align: center;
    font-weight: bold;
}

#logo{
    position: relative;
    width: 245px;
    display: flex;
    font-size: 30px;
    align-items: center;
    justify-content: flex-end;
    padding-right: 35px;
    text-transform: uppercase;
    color: #a292b3;
    margin-left: -95px;
    }

#logo::before{
    content: url(img/Group-4.png);
}

#header-menu ul{
    display: flex;
    flex-wrap: wrap;
}

#header-menu ul li{
    margin-left:50px;
}

#header-menu ul li a{
    display: block;
    padding: 15px 0 15px 0px;
    color: #818181;
    margin: 5px;
    height: 55px;
}

#header-menu ul li a::before{
    padding-right: 7px;
}

#header-menu ul li#home a::before{
    content: url(img/Shape-2.png);
}

#header-menu ul li#about a::before{
    content: url(img/Shape-3.png);
}

#header-menu ul li#services a::before{
    content: url(img/Shape-4.png);
}

#header-menu ul li#contact a::before{
    content: url(img/Shape-5.png);
}

#header-menu ul li#contact a{
    padding-top: 21px;
}

#banner{
    position: relative;
}

#banner img{
    width: 100%;
    /* border: 1px solid black; */
}

#banner #navigation{
    position: absolute;
    top: 40%;
    /* border: 1px solid black; */
    width: 100%;
    height: 20%;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

#banner #navigation .btn{
    color: #fff;
    background-color: #83699d;
    padding: 10px 3px;
    font-size: 22px;
    cursor: pointer;
    border: none;
}

#banner #navigation .btn:hover{
    background-color: #59466d;
}

#banner #navigation #MintoText{
    display: flex;
    flex-direction: column;
    text-align: center;
}

#banner #navigation #MintoText span{
    color: #fff;
    font-size: 30px;
}

#banner #navigation #MintoText #minto{
    font-size: 16vh;
    font-family:andesitalicw04-regularregular;
    text-shadow: #000 -2px 3px;
}

#container #present_text {
    text-align: center;
    border-top: 1px solid #bfbfbf;
    border-bottom: 1px solid #bfbfbf;
    font-style: italic;
    font-size: 20px;
    line-height: 4vh;
    font-weight: 500;
    padding: 20px 35px;
    margin: auto;
    margin-top: 40px;
    margin-bottom: 30px;
    width: 98%;
}

#container #present_text span{
    color: #83699d;
}

#banners_bottom{
    display: flex;
    flex-wrap: wrap;
}

#banners_bottom #bn-left{
    width:34%;
}

#banners_bottom #bn-right{
    width:66%;
}

#banners_bottom #bn-left #wrap {
    margin-right: 10px;
    position: relative;
    height: 370px;
}

#banners_bottom #bn-left #wrap .round_white{
    position: absolute;
    max-width: 100%;
}

#banners_bottom #bn-left #wrap .round{
    max-width: 85%;
    position: absolute;
    width: 100%;
    left: 12px;
    top: 12px;
}

#banners_bottom #bn-right #wrap {
    margin-left: 10px;
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    height: 370px;
}

#banners_bottom #bn-right #wrap h1 {
    margin-bottom: 0;
    margin-top: 50px;
}

#banners_bottom #bn-right #wrap p {
    margin-right: 50px;
    margin-bottom: 0;
    margin-top: 0;
}

#banners_bottom #bn-right #wrap #read{
    margin-top: 0;
    font-style: italic;
    font-size: 12px;
    width: 100%;
    display: inline-block;
}

#banners_bottom #bn-right #wrap #read span, 
#banners_bottom #bn-right #wrap #read button{
    float:right;
}

#banners_bottom #bn-right #wrap #read button{
    cursor: pointer;
    border: none;
    background-color: #fff;
}

#banners_bottom #bn-right #wrap #read button i{
    vertical-align: text-top;
    font-weight: bold;
}

#where{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 5px;
}

#where p{
    margin: 0;
    font-size: 17px;
    margin-bottom: 20px;
}

#bottom-menu ul{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 60px;
}

#bottom-menu ul li{
    border: 1px solid #bfbfbf;
    flex-grow: 1;
    background-color:#f5f5f5;
}

#bottom-menu ul li a{
    display: block;
    max-width: 70%;
    margin:auto;
    margin-top: 10px;
}

footer{
    background-color: #e8e8e8;
    padding: 20px;
    }

footer .wrap{
    max-width: 1035px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: auto;
}

#copyright{
    display: flex;
    font-size: 14px;
    align-items: center;
}

#copyright span{
    margin-left: 5px;
}

#social a{
    margin-left: 20px;
}

#social i{
    color: #fff;
    width: 30px;
    height: 30px;
    padding-top:7px;
    border-radius: 50%;
    background-color: #82699d;
    text-align: center;
    vertical-align: middle;
    font-size:20px;
}

@media(max-width: 700px){
    body{
        max-height: 1800px;
    }

    #where{
        margin-top: 200px;
    } 

    #container #present_text {
        line-height: 30px;
    }

    #banners_bottom{
        flex-direction:column;
    }

    #banner #navigation #MintoText span{
        font-size: 20px;
    }

    #banner #navigation #MintoText #minto{
        font-size: 12vh;
    }

    #banners_bottom #bn-left{
        width: 66%;
        margin: auto;
    }

    #banners_bottom #bn-right {
        width: 100%;
    }
}

@media(max-width: 400px) {
    body{
        max-height: 2500px;
    }

    #where{
        margin-top: 400px;
    }

    #container #present_text {
        line-height: 30px;
    }

    #banners_bottom{
        flex-direction:column;
    }

    #banner #navigation #MintoText span{
        font-size: 20px;
    }

    #banner #navigation #MintoText #minto{
        font-size: 8vh;
    }

    #banners_bottom #bn-left{
        width: 66%;
        margin: auto;
    }

    #banners_bottom #bn-right {
        width: 100%;
    }
}', 'twentytwenty', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-02-01 18:24:46', '2020-02-01 15:24:46', '', '12', 'http://localhost:3001/?p=13', '0', 'revision', '', '0' ),
( '14', '1', '2020-02-01 18:33:44', '2020-02-01 15:33:44', '{
    "custom_css[twentytwenty]": {
        "value": "",
        "type": "custom_css",
        "user_id": 1,
        "date_modified_gmt": "2020-02-01 15:33:44"
    }
}', '', '', 'trash', 'closed', 'closed', '', 'fff7ebfb-69a7-4b71-bc00-41efaa6a9883', '', '', '2020-02-01 18:33:44', '2020-02-01 15:33:44', '', '0', 'http://localhost:3001/?p=14', '0', 'customize_changeset', '', '0' ),
( '15', '1', '2020-02-01 18:33:44', '2020-02-01 15:33:44', '', 'twentytwenty', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-02-01 18:33:44', '2020-02-01 15:33:44', '', '12', 'http://localhost:3001/?p=15', '0', 'revision', '', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_term_relationships" --------------------
INSERT INTO `wp_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) VALUES 
( '1', '1', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_term_taxonomy" -------------------------
INSERT INTO `wp_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) VALUES 
( '1', '1', 'category', '', '0', '1' );
-- ---------------------------------------------------------


-- Dump data of "wp_termmeta" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "wp_terms" ---------------------------------
INSERT INTO `wp_terms`(`term_id`,`name`,`slug`,`term_group`) VALUES 
( '1', 'Без рубрики', '%d0%91%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_usermeta" ------------------------------
INSERT INTO `wp_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) VALUES 
( '1', '1', 'nickname', 'admin' ),
( '2', '1', 'first_name', '' ),
( '3', '1', 'last_name', '' ),
( '4', '1', 'description', '' ),
( '5', '1', 'rich_editing', 'true' ),
( '6', '1', 'syntax_highlighting', 'true' ),
( '7', '1', 'comment_shortcuts', 'false' ),
( '8', '1', 'admin_color', 'fresh' ),
( '9', '1', 'use_ssl', '0' ),
( '10', '1', 'show_admin_bar_front', 'true' ),
( '11', '1', 'locale', '' ),
( '12', '1', 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}' ),
( '13', '1', 'wp_user_level', '10' ),
( '14', '1', 'dismissed_wp_pointers', '' ),
( '15', '1', 'show_welcome_panel', '1' ),
( '17', '1', 'wp_dashboard_quick_press_last_post_id', '4' ),
( '18', '1', 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}' ),
( '19', '1', 'session_tokens', 'a:1:{s:64:"f8f872248139a24cffcaead72634e83c7143b8e667cd46ff562942579caf7c36";a:4:{s:10:"expiration";i:1580727933;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0";s:5:"login";i:1580555133;}}' );
-- ---------------------------------------------------------


-- Dump data of "wp_users" ---------------------------------
INSERT INTO `wp_users`(`ID`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`user_registered`,`user_activation_key`,`user_status`,`display_name`) VALUES 
( '1', 'admin', '$P$BwmOSJF6A6Iz8MibepFuPYPBPxWiyK/', 'admin', 'andrei.chornii@gmail.com', '', '2020-02-01 09:18:37', '', '0', 'admin' );
-- ---------------------------------------------------------


-- CREATE INDEX "comment_id" -----------------------------------
CREATE INDEX `comment_id` USING BTREE ON `wp_commentmeta`( `comment_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_commentmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_approved_date_gmt" --------------------
CREATE INDEX `comment_approved_date_gmt` USING BTREE ON `wp_comments`( `comment_approved`, `comment_date_gmt` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_author_email" -------------------------
CREATE INDEX `comment_author_email` USING BTREE ON `wp_comments`( `comment_author_email`( 10 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_date_gmt" -----------------------------
CREATE INDEX `comment_date_gmt` USING BTREE ON `wp_comments`( `comment_date_gmt` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_parent" -------------------------------
CREATE INDEX `comment_parent` USING BTREE ON `wp_comments`( `comment_parent` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_post_ID" ------------------------------
CREATE INDEX `comment_post_ID` USING BTREE ON `wp_comments`( `comment_post_ID` );
-- -------------------------------------------------------------


-- CREATE INDEX "link_visible" ---------------------------------
CREATE INDEX `link_visible` USING BTREE ON `wp_links`( `link_visible` );
-- -------------------------------------------------------------


-- CREATE INDEX "autoload" -------------------------------------
CREATE INDEX `autoload` USING BTREE ON `wp_options`( `autoload` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_postmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "post_id" --------------------------------------
CREATE INDEX `post_id` USING BTREE ON `wp_postmeta`( `post_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "post_author" ----------------------------------
CREATE INDEX `post_author` USING BTREE ON `wp_posts`( `post_author` );
-- -------------------------------------------------------------


-- CREATE INDEX "post_name" ------------------------------------
CREATE INDEX `post_name` USING BTREE ON `wp_posts`( `post_name`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "post_parent" ----------------------------------
CREATE INDEX `post_parent` USING BTREE ON `wp_posts`( `post_parent` );
-- -------------------------------------------------------------


-- CREATE INDEX "type_status_date" -----------------------------
CREATE INDEX `type_status_date` USING BTREE ON `wp_posts`( `post_type`, `post_status`, `post_date`, `ID` );
-- -------------------------------------------------------------


-- CREATE INDEX "term_taxonomy_id" -----------------------------
CREATE INDEX `term_taxonomy_id` USING BTREE ON `wp_term_relationships`( `term_taxonomy_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "taxonomy" -------------------------------------
CREATE INDEX `taxonomy` USING BTREE ON `wp_term_taxonomy`( `taxonomy` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_termmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "term_id" --------------------------------------
CREATE INDEX `term_id` USING BTREE ON `wp_termmeta`( `term_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "name" -----------------------------------------
CREATE INDEX `name` USING BTREE ON `wp_terms`( `name`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "slug" -----------------------------------------
CREATE INDEX `slug` USING BTREE ON `wp_terms`( `slug`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_usermeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "user_id" --------------------------------------
CREATE INDEX `user_id` USING BTREE ON `wp_usermeta`( `user_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_email" -----------------------------------
CREATE INDEX `user_email` USING BTREE ON `wp_users`( `user_email` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_login_key" -------------------------------
CREATE INDEX `user_login_key` USING BTREE ON `wp_users`( `user_login` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_nicename" --------------------------------
CREATE INDEX `user_nicename` USING BTREE ON `wp_users`( `user_nicename` );
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


