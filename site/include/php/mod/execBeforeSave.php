<?php
if (!defined('CFG_PWD')) 
{
	include $_SERVER["DOCUMENT_ROOT"].str_replace('site/include/php/mod/','',str_replace(basename($_SERVER['SCRIPT_FILENAME']),'',$_SERVER['PHP_SELF']))."config.php"; //archivo con parametros generales del sitio
	include CFG_FOL_CFG_FWRK.'includes.php'; //librerias FWRK
	include CFG_FOL_SITE_CONFIG.'functions.site.php'; //parámetros globales del sitio
	include CFG_FOL_SITE_CONFIG.'config.sections.php'; // configuracion de los parámetros para editar las tablas

	$db = CFG_DB_ACTIVE ? initDB() : null; //DB
	$main = new NwtMain($db); //clase que resuelve sesiones
}

if($secAttr['table'] == 't_carga' && $id)
{
	$val = !$val ? $_POST['fecha_salida'] : $val;

	$q = $db->query("SELECT fecha_salida FROM ".$secAttr['table']."  WHERE id_carga='".$id."'");
	$d = $db->fetchArray($q);

	if($d['fecha_salida'] != $val && (!$d['fecha_salida'] || $d['fecha_salida'] == '0000-00-00'))
		$q = $db->query("UPDATE ".$secAttr['table']." SET salio = 'SI' WHERE id_carga='".$id."'");
}