<?php
include CFG_FOL_CFG_FWRK.'section.header.php';

$tabCount = $section == 'edit' ? tabCount($db,$key,$body,$tables,array('cursos_profesores','cursos_unidades')) : null;

switch($section)
{
	
	default:
		include CFG_FOL_CFG_FWRK.'formSection.defaults.php';
	break;
	
}

include tabs($body);
