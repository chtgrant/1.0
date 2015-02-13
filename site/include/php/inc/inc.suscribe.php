<?php

include CFG_FOL_MODULES."geoip/geoip.inc";

$sql = "SELECT u.*
		FROM t_inscripciones u
		WHERE u.hash = '".$key."'
					 ";
$q = $db->query($sql);//print $sql;
$d = $db->fetchArray($q);

$gi = geoip_open(CFG_FOL_MODULES."geoip/GeoIP.dat",GEOIP_STANDARD); 

$comboEducacion = mkComboBox($db,'id_nivel_educacion',"SELECT id_nivel_educacion,nombre FROM t_nivel_educacion",array('id_nivel_educacion','nombre'),null,array('selectTxt' => 'Nivel de educación','tabIndex'=>70));
$comboConocio = mkComboBox($db,'id_comes_from',"SELECT id_comes_from,nombre FROM t_comes_from",array('id_comes_from','nombre'),null,array('selectTxt' => 'Como nos conoció','tabIndex'=>65));

$geoFilter = geoip_country_name_by_addr($gi, $_SERVER['REMOTE_ADDR']) == 'Argentina' ? null : " AND international = 1";
$sql = "SELECT * FROM t_metodos_pago WHERE TRUE ".$geoFilter;

$q = $db->query($sql);//print $sql;
while($dPagos = $db->fetchArray($q))
	$pPagos.= '<li><a href="#">&nbsp;'.$dPagos['nombre'].'<img class="flag" src="'.$_IMG.'pagos/'.$dPagos['logo'].'" alt="" /><span class="value">'.$dPagos['id_metodos_pago'].'</span></a></li>';

$tpl->smarty->assign("sectionCursos",$sectionCursos);
$tpl->smarty->assign("comboEducacion",$comboEducacion);
$tpl->smarty->assign("comboConocio",$comboConocio);
$tpl->smarty->assign("pPagos",$pPagos);