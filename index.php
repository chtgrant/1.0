<?PHP
include "config.php"; //archivo con parametros generales del sitio
include CFG_FOL_CFG_FWRK.'includes.php'; //librerias FWRK

$db = CFG_DB_ACTIVE ? initDB() : null; //DB
$main = new NwtMain($db); //clase que resuelve sesiones
$tpl = new Tpl($body,$_LANG,$db); //clase que arma el site

include CFG_FOL_CFG_FWRK.'site.include.php'; //includes de procesamiento del site

$tpl->smtDisplay();

if(CFG_DB_ACTIVE)if($db->connect())$db->close();
