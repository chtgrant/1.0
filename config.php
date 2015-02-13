<?PHP
define('_DEBUG', false);

session_start();

$_REAL_SCRIPT_DIR = realpath(dirname($_SERVER['SCRIPT_FILENAME'])); 
$_REAL_BASE_DIR = realpath(dirname(__FILE__)); 
$_MY_PATH_PART = substr( $_REAL_SCRIPT_DIR, strlen($_REAL_BASE_DIR)); 
$_ROOT = $_MY_PATH_PART ? substr( dirname($_SERVER['SCRIPT_NAME']), 0, -strlen($_MY_PATH_PART) ) : dirname($_SERVER['SCRIPT_NAME']);
$_ROOT = $_ROOT == '/' ? $_ROOT : str_replace("//","/",$_ROOT."/");

// GLOBAL DEFINITIONS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
define('CFG_REW_EXT', '.html');
define('CFG_ADMIN_ACCESS', 'BackOffice');
define('CFG_SUBFOL', ''); // with forwardSlash
define('CFG_DOMAIN', 'www.enlatam.com'); // ex www.domain.com
define('CFG_URL', 'http://'.CFG_DOMAIN.'/'.CFG_SUBFOL);
define('CFG_PWD', '/home/enlatam/www'); // without forwardSlash | el path del public html nada más
define('CFG_FOL_TPL_DEFAULT', 'front'); // usually front
define('CFG_COMPANY', 'Escuela de Negocios Latinoamericana');
define('SITE_TITLE', '.:: '.CFG_COMPANY.' ::.');
define('SITE_TITLE_PLAIN', '.:: '.CFG_COMPANY.' ::.');
define('SITE_COMPANY', CFG_COMPANY);
define('SITE_CLASSIFICATION', 'Education');
define('SITE_CHARSET', 'utf-8');
define('NOSCRIPT', '<noscript><div>Para ver este sitio debe tener habilitado el Javascript.<hr/></div></noscript>');
define('CFG_NOCACHE', false);// T -> Adds a MD5 hash at the end of JS and CSS files
// locale definitions
define('CFG_COL_COMBOBOX', 'nombre');// Name of default column fot the auto combo boxes on Backend
define('CURRENCYCODE_DEFAULT', 'AR$');// currency code
define('CURRENCYSIGN_DEFAULT', '$');// currency sign
define('CFG_DATEFORMAT', 'yy-mm-dd');// default display date format (DB format is yyyy-mm-dd)
define('CFG_LANG_DEF', 'en');// if not defined the default language file (path: site/include/lang/)
//Security
define('CFG_SALT_OPT', true); // for Md5 hash to store passwords
define('CFG_SALT', 'o7_T7&98g()/gf/MH.8'); // for Md5 hash to store passwords
define("ENCRYPTION_KEY", "fa,4YM8fl/4%f4a"); // for encripting strings
define('CFG_ONLY_ADMIN', false); // T -> just the Backend, doesn´t have a Site o FrontEnd
define('CFG_BACKEND_ACCESS', '0,1'); // T -> profiles that access backend (code column)
define('CFG_REQUIRE_LOGIN', true); // if the installed FWRK will requere access security
define('CFG_LOG_RAW', true); // TRUE log crudo de la actividad del usuario en la tabla userlogs
define('CFG_AUDIT_HISTORY', true); // TRUE para que no borre los audit logs cuando se borra un registro FALSE agrega constraint cascade on delete que borra el registro de la tabla auditada
define('ACCESS_SECURITY', false);// T -> 3rd login Fail blocks IP address
define('CFG_PROFILE_FILTER', true);// T -> To filter data when a profile has a rel_table column defined
//Interfase definitions
define('CFG_USER_EMAIL', false);// T -> Uses Email to validate USER login
define('NICE_LINKING', false);// T -> saves configured table column into a nice linking table for mod_rewrite (Nice linking table structure needed)
define('FLASH_UPLOAD', true);// T -> Script: uploadify, F -> common upload input
define('CFG_DLD_AUTH', true);// T -> Login needed for file download
define('CFG_MIXED_CONT', true);// T -> For the error of "Blocked loading mixed active content" you need to use // instead of http://
define('CFG_MULTILANG', false);// T -> Multi Language Site
define('CFG_TOPSEARCH', false);// T -> Top search (for the backend)
define('HTML_EDITOR', true);// T -> Use WYSIWYG when TEXTAREA (on the backend)

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< GLOBAL DEFINITIONS


// pages with no login req - Se usa el body y se agrega en el array() con valor true para que no entre en validación EX: $_Pages['home'] = true;
$_Pages['home'] = true;
$_Pages['cursosList'] = true;
$_Pages['curso'] = true;
$_Pages['conferences'] = true;
$_Pages['webinars'] = true;
$_Pages['workshops'] = true;
$_Pages['elearning'] = true;
$_Pages['campus-virtual'] = true;
$_Pages['contacto'] = true;
$_Pages['quienes-somos'] = true;
$_Pages['modalidad-online'] = true;
$_Pages['modalidad-presencial'] = true;
$_Pages['cursos-incompany'] = true;
$_Pages['management'] = true;
$_Pages['it'] = true;
$_Pages['marketing'] = true;
$_Pages['mkt'] = true;
$_Pages['suscribe'] = true;
$_Pages['unsuscribe'] = true;
$_Pages['login'] = true;
$_Pages['mis-datos'] = true;
$_Pages['mis-cursos'] = true;


//FOLDERS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

//fwrk
define('CFG_FOL_TEMPLATE', 'front/');
define('CFG_FOL_FWK', dirname(__FILE__).'/fwrk/');
define('CFG_FOL_CLASS', dirname(__FILE__).'/fwrk/lib/classes/');
define('CFG_FOL_LIB', dirname(__FILE__).'/fwrk/lib/');
define('CFG_FOL_LANG_FWRK', dirname(__FILE__).'/fwrk/lang/');
define('CFG_FOL_CONFIG', dirname(__FILE__).'/fwrk/include/php/conf/');
define('CFG_FOL_PHPMAILER', dirname(__FILE__).'/fwk/lib/phpmailer/');
define('CFG_FOL_FWK_JS', $_ROOT.'fwrk/lib/js/');
define('CFG_FOL_FWK_CSS', $_ROOT.'fwrk/lib/css/');
define('CFG_FOL_FWK_IMG', $_ROOT.'fwrk/media/images/');
define('CFG_FOL_SMT_LIB', dirname(__FILE__).'/fwrk/lib/smt/libs/');
define('CFG_FOL_CKEDITOR', $_ROOT.'fwrk/lib/ckeditor/');
define('CFG_FOL_CAPTCHA', dirname(__FILE__).'/fwrk/classes/captcha/');
define('CFG_FOL_SCRIPTS', dirname(__FILE__).'/fwrk/scripts/');
define('CFG_IMG_BK', $_ROOT.'site/template/back/images/');
define('CFG_FOL_LOAD_FWRK', dirname(__FILE__).'/fwrk/include/php/load/');
define('CFG_FOL_LOAD_FWRK_L', $_ROOT.'fwrk/include/php/load/');
define('CFG_FOL_MOD_FWRK', dirname(__FILE__).'/fwrk/include/php/mod/');
define('CFG_FOL_MOD_FWRK_L', $_ROOT.'fwrk/include/php/mod/');
define('CFG_FOL_CFG_FWRK', dirname(__FILE__).'/fwrk/include/php/conf/');
define('CFG_FOL_CFG_FWRK_L', $_ROOT.'fwrk/include/php/conf/');
define('CFG_FOL_CFG_TPL', dirname(__FILE__).'/fwrk/include/template/tpl/');

//site
define('SITE_DIR', substr(str_replace(CONFIG_SUBFOL,"",$_ROOT),0,(strlen(str_replace(CONFIG_SUBFOL,"",$_ROOT))-1)));
define('CFG_FOL_SITE', dirname(__FILE__).'/site/');
define('CFG_FOL_SITE_CONFIG', dirname(__FILE__).'/site/include/php/conf/');
define('CFG_SMT_TPL_C', 'site/cache/templates_c/');
define('CFG_FOL_LANG', dirname(__FILE__).'/site/include/lang/');

define('CFG_SMT_TPL', dirname(__FILE__).'/site/template/');
define('CFG_FOL_IMG', $_ROOT.'site/template/');
define('CFG_FOL_SITE_CSS', $_ROOT.'site/template/'.CFG_FOL_TEMPLATE.'css/');

define('CFG_FOL_SITE_JS', $_ROOT.'site/include/js/');
define('CFG_FOL_SITE_INCLUDE', dirname(__FILE__).'/site/include/php/inc/');
define('CFG_FOL_SMT_TPL', dirname(__FILE__).'/templates/');
define('CFG_FOL_SMT_COMPILE', dirname(__FILE__).'/templates_c/');
define('CFG_FOL_UPLOAD', dirname(__FILE__).'/site/media/upload/');
define('CFG_FOL_UPLOAD_P', $_ROOT.'site/media/upload/');
define('CFG_FOL_BKP', dirname(__FILE__).'/site/media/backup/');
define('CFG_FOL_BKP_P', $_ROOT.'site/media/backup/');
define('CFG_FOL_MODULES', dirname(__FILE__).'/site/include/modules/');
define('CFG_FOL_MODULES_P', $_ROOT.'site/include/modules/');
define('CFG_FOL_TMP', dirname(__FILE__).'/site/cache/tmp/');
define('CFG_FOL_TMP_P', $_ROOT.'site/cache/tmp/');
define('CFG_FOL_SWF', $_ROOT.'site/media/swf/');
define('CFG_FOL_VIDEO', $_ROOT.'site/media/video/');
define('CFG_FOL_XML', $_ROOT.'site/media/xml/');
define('CFG_FOL_DOCS', dirname(__FILE__).'/site/media/docs/');
define('CFG_FOL_DOCS_L', $_ROOT.'/site/media/docs/');
define('CFG_FOL_LOAD', dirname(__FILE__).'/site/include/php/load/');
define('CFG_FOL_LOAD_L', $_ROOT.'site/include/php/load/');
define('CFG_FOL_MOD', dirname(__FILE__).'/site/include/php/mod/');
define('CFG_FOL_MOD_L', $_ROOT.'site/include/php/mod/');
define('CFG_FOL_INC', dirname(__FILE__).'/site/include/php/inc/');
define('CFG_FOL_INC_L', $_ROOT.'/site/include/php/inc/');

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< END FOLDERS


// SITE SECTIONS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

$jsLib = array();
$cssLib = array();

array_push($cssLib,'jquery-ui-1.8.6.custom.css');
array_push($cssLib,'jquery.fancybox.css');
array_push($cssLib,'styles.site.css');
array_push($cssLib,'https://fonts.googleapis.com/css?family=Lato:400,300,700');


array_push($jsLib,'unslider.min.js');
array_push($jsLib,'jquery.fancybox.js');
array_push($jsLib,'jquery.mousewheel-3.0.4.pack.js');
array_push($jsLib,'http://maps.googleapis.com/maps/api/js?&sensor=true');
array_push($jsLib,'validaForm.js');
array_push($jsLib,'SmartNotification.min.js');
//array_push($jsLib,'summernote.js');


$jsLibBack = array();
$cssLibBack = array();


//mail
define('CFG_MAIL_FROM', 'info@fantasmasdeliverpool.com');
define('CFG_MAIL_FROM_NAME', SITE_TITLE);
define('CFG_MAIL_HOST', 'smtp.fantasmasdeliverpool.com');
define('CFG_MAIL_USER', 'info@fantasmasdeliverpool.com');
define('CFG_MAIL_PASS', '******');
define('CFG_MAIL_SMTP', false);
define('CFG_MAIL_TEMPLATE', '<table cellpadding="0" cellspacing="0" align="center" width="600"><tr><td><img src="'.CFG_URL.'site/template/front/images/mail/hdr_alert_si.jpg" alt="" /></td></tr><tr><td style="padding:20px;">%%BODY%%</td></tr><tr><td height="30" style="background:#ECECEC;">&nbsp;</td></tr></table>');

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< END SITE SECTIONS

// SOCIAL MEDIA
define('TW_PAGE', 'https://twitter.com/#!/labatatamacabra'); //Twitter
define('TW_USER', 'senalint'); //Twitter
define('FB_PAGE', 'https://twitter.com/#!/labatatamacabra'); //Facebook
define('GO_PAGE', 'https://twitter.com/#!/labatatamacabra'); //Google
define('RSS_PAGE', 'https://twitter.com/#!/labatatamacabra'); //RSS

// FB API
define('CFG_IS_FB_APP', false);// T -> For the error of "Blocked loading mixed active content" you need to use // instead of http://
define('APP_FB_API_JS', true);
define("APP_FB_API_LOGIN_POPUP", false);
define("APP_FB_API_LOGIN_KEY", "500320110090892");
define("APP_FB_API_LOGIN_SECRET", "051a42b8f5b765ee3ba136a7f9a806a4");
define("APP_FB_API_LOGIN_URL", CFG_URL."register/");
define("APP_FB_BASE_URL", "http://tango.fbnwt.net/booking/?h=".$_GET['h']);
define("APP_FB_API_KEY", "500320110090892");
define("APP_FB_API_SECRET", "051a42b8f5b765ee3ba136a7f9a806a4");
define("APP_FB_TXT_FB", "collectiblevinylrecords");


// DATABASE SETTINGS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// database conn
define('CFG_DB_ACTIVE', true);
define('CFG_DB_DISPLAY_ERRORS', true);
define('CFG_DB_TRUNCATE_PERMS', true);
define('CFG_DB_TYPE', 'mysql');
define('CFG_DB_SERVER', 'localhost');
define('CFG_DB_BASE', 'enlatam_web');
define('CFG_DB_USER', 'enlatam_web');
define('CFG_DB_PASS', 'fR,aR0u9)vs5L');

// database variables
define('COL_CHARS_LIMIT', 100); // cantidad de caracteres máxima para la columna de la grilla del listado de datos.
define('CFG_DB_CANTRES', '5');
define('CFG_DB_SHOW_ALL', false);
define('CFG_DB_PREFIX', 't_');


// tables for sessions
define('CFG_TBL_USER', CFG_DB_PREFIX.'user');
define('CFG_TBL_USER_PROFILES', CFG_DB_PREFIX.'userprofiles');
define('CFG_TBL_USER_BANNED', CFG_DB_PREFIX.'userbanned');
define('CFG_TBL_USER_AUDIT', CFG_DB_PREFIX.'useraudit');
define('CFG_TBL_USER_BACKUP', CFG_DB_PREFIX.'userbackup');
define('CFG_TBL_USERLOGS', CFG_DB_PREFIX.'userlogs');
define('CFG_TBL_USERACTIVO', CFG_DB_PREFIX.'useractive');
define('CFG_TBL_LANG', CFG_DB_PREFIX.'userlang');
define('CFG_TBL_NAV', CFG_DB_PREFIX.'usernav');
define('CFG_TBL_PERMS', CFG_DB_PREFIX.'userprofiles_perms');

// site tables


//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< DATABASE SETTINGS


//Meta
define('CFG_META_DESCRIPTION', '');
define('CFG_META_METAS', '');

