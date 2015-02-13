<?php
include $_SERVER["DOCUMENT_ROOT"].str_replace('site/include/php/mod/','',str_replace(basename($_SERVER['SCRIPT_FILENAME']),'',$_SERVER['PHP_SELF']))."config.php"; //archivo con parametros generales del sitio
include CFG_FOL_CFG_FWRK.'includes.php'; //librerias FWRK
include CFG_FOL_SITE_CONFIG.'functions.site.php'; //parámetros globales del sitio

$db = CFG_DB_ACTIVE ? initDB() : null; //DB
$main = new NwtMain($db); //clase que resuelve sesiones

include CFG_FOL_SITE_CONFIG.'config.sections.php'; // configuracion de los parámetros para editar las tablas

//$db->query("UPDATE t_pedidos SET id_pedidos_estados = 3 WHERE date_added <= (SELECT getBusinessDate(now(), 15)) AND id_pedidos_estados = 1");

$db->query("UPDATE t_cotizaciones SET id_cotizaciones_estados = 5,id_motivo_rechazo = 2,last_update = now(),id_user_last_update = -1 WHERE date_added <= (SELECT getBusinessDate(now(), 15)) AND id_cotizaciones_estados = 1");
