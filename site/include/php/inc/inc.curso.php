<?php

include CFG_FOL_MODULES."geoip/geoip.inc";

$sql = "SELECT u.*,ct.clave,cm.nombre AS modalidad
		FROM t_cursos u
		LEFT JOIN t_cursos_tipos ct ON ct.id_cursos_tipos = u.id_cursos_tipos
		LEFT JOIN  t_cursos_modalidad cm ON cm.id_cursos_modalidad = u.id_cursos_modalidad
		WHERE u.id_cursos = '".$key."'
					 ";
$q = $db->query($sql);//print $sql;
$d = $db->fetchArray($q);

$gi = geoip_open(CFG_FOL_MODULES."geoip/GeoIP.dat",GEOIP_STANDARD); 
$d['precio_ip'] = geoip_country_name_by_addr($gi, $_SERVER['REMOTE_ADDR']) == 'Argentina' ? $d['precio_local'] : $d['precio_internacional'];


$d['fecha_comienzo'] = getDay($d['fecha_comienzo']) .' de '.$_LANG['general']['months'][(int)getMonth($d['fecha_comienzo'])].' '.getYear($d['fecha_comienzo']);
$d['titleLong'] = strlen($d['titulo']) > 36 && strlen($d['titulo']) < 50 ? 'style="font-size:34px;"' : null;
$d['unidades'] = getUnidadesCurso($db,$key);

$sectionCursos['listCursos'] = listCursos($db,str_replace("List","",$body),null," AND id_cursos != ".$key);

$pMetaFacebook = '<!-- Open Graph data -->
<meta property="og:title" content="'.$d['titulo'].'" />
<meta property="og:type" content="course" />
<meta property="og:url" content=" http://'.CFG_DOMAIN.$_SERVER['REQUEST_URI'].'" />
<meta property="og:image" content=" http://'.CFG_DOMAIN.CFG_FOL_UPLOAD_P.$d['img'].'" />
<meta property="og:description" content="'.$d['breve_descripcion'].'" />
<meta property="og:site_name" content="'.SITE_TITLE.'" />
<meta property="fb:admins" content="0" /> ';

$q = $db->query("SELECT CONCAT(p.nombre, ' ', p.apellido) AS nombreProfesor,p.img AS imgProfesor,p.linkedin,p.twitter FROM t_profesores p INNER JOIN t_cursos_profesores cp ON cp.id_profesores = p.id_profesores LEFT JOIN t_cursos c ON c.id_cursos = cp.id_cursos WHERE c.id_cursos = '".$key."'");//print $sql;
while($dP = $db->fetchArray($q))
{
$d['profesores'] .= '
<div class="curso-sch-item">
					<img src="'.CFG_FOL_UPLOAD_P.$dP['imgProfesor'].'" alt="" class="curso-icon-prof" />
					<span class="p">'.$dP['nombreProfesor'].'</span><span class="n">Docente</span>
					<a href="'.addhttp($dP['twitter']).'" class="social-prof-1" target="_blank"></a>
					<a href="'.addhttp($dP['linkedin']).'" class="social-prof-2" target="_blank"></a>
				</div>';
}


$tpl->smarty->assign("sectionCursos",$sectionCursos);
