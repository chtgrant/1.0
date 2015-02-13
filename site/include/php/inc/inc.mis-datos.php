<?php
if(!$main->auth())
	header("Location: ".CFG_URL."login/?r=".urlencode(encrypt_decrypt('encrypt', $_SERVER["REQUEST_URI"])));


include CFG_FOL_MODULES."geoip/geoip.inc";

$sql = "SELECT u.*
		FROM t_alumnos u
		WHERE u.id_alumnos = '".$_SESSION['userF']['id_rel']."'
					 ";
$q = $db->query($sql);//print $sql;
$d = $db->fetchArray($q);

$d['fecha_nacimiento'] = chgDate($d['fecha_nacimiento'],'d-m-Y');

$gi = geoip_open(CFG_FOL_MODULES."geoip/GeoIP.dat",GEOIP_STANDARD); 

$comboEducacion = mkComboBox($db,'id_nivel_educacion',"SELECT id_nivel_educacion,nombre FROM t_nivel_educacion",array('id_nivel_educacion','nombre'),$d['id_nivel_educacion'],array('selectTxt' => 'seleccione el nivel de educación','tabIndex'=>70));
$comboConocio = mkComboBox($db,'id_comes_from',"SELECT id_comes_from,nombre FROM t_comes_from",array('id_comes_from','nombre'),$d['id_comes_from'],array('selectTxt' => 'seleccione como nos conoció','tabIndex'=>65));

$geoFilter = geoip_country_name_by_addr($gi, $_SERVER['REMOTE_ADDR']) == 'Argentina' ? null : " AND international = 1";
$sql = "SELECT * FROM t_metodos_pago WHERE TRUE ".$geoFilter;

$ordenPagos = 0;
$q = $db->query($sql);//print $sql;
while($dPagos = $db->fetchArray($q))
{
	$pPagos.= '<li><a href="#">&nbsp;'.$dPagos['nombre'].'<img class="flag" src="'.$_IMG.'pagos/'.$dPagos['logo'].'" alt="" /><span class="value">'.$dPagos['id_metodos_pago'].'</span></a></li>';
	$ordenPagos = $dPagos['id_metodos_pago'] ==  $d['id_metodos_pago'] ? $dPagos['orden'] : $ordenPagos;
}
$pPagos.= $ordenPagos ? '<script type="text/javascript">$("#payment dt a span").html($("#payment dd ul li:nth-child('.$ordenPagos.') a").html());</script>' : null;

$countCursos = 0;
$q = $db->query("
SELECT ai.*,c.titulo,a.id_metodos_pago,ct.clave,
	   CASE WHEN c.fecha_comienzo IS NULL OR c.fecha_comienzo = '0000-00-00' THEN 'N/A'
	   ELSE c.fecha_comienzo END AS fecha_comienzo,
	   CASE WHEN c.fecha_cierre_inscripcion IS NULL OR c.fecha_cierre_inscripcion = '0000-00-00' THEN 'N/A'
	   ELSE c.fecha_cierre_inscripcion END AS fecha_cierre_inscripcion,
	   CASE WHEN c.fecha_fin IS NULL OR c.fecha_fin = '0000-00-00' THEN 'N/A'
	   ELSE c.fecha_fin END AS fecha_fin
FROM t_alumnos_inscripciones ai
LEFT JOIN t_alumnos a ON a.id_alumnos = ai.id_alumnos
LEFT JOIN t_cursos c ON c.id_cursos = ai.id_cursos
LEFT JOIN t_cursos_tipos ct ON c.id_cursos_tipos = ct.id_cursos_tipos
LEFT JOIN t_cursos_categorias cc ON cc.id_cursos_categorias = c.id_cursos_categorias
WHERE ai.id_alumnos = '".$_SESSION['userF']['id_rel']."'");//print $sql;
while($dCursos = $db->fetchArray($q))
{
	$data['tbody'] .= '<tr id="row_'.$dCursos['id_cursos'].'">';
	$data['tbody'] .= '<td><a href="'.CFG_URL.$dCursos['clave'].'/'.strToUrl($dCursos['titulo']).'/'.$dCursos['id_cursos'].'/" title="Ver datos del curso">'.$dCursos['titulo'].'</a></td>';
	$data['tbody'] .= '<td>'.$dCursos['fecha_comienzo'].'</td>';
	$data['tbody'] .= '<td>'.$dCursos['fecha_cierre_inscripcion'].'</td>';
	$data['tbody'] .= '<td>';
	$data['tbody'] .= '<button data-original-title="'.($dCursos['pago'] == 1 ? 'El curso se encuentra Pago' : 'Pagar Curso').'" data-placement="top" rel="tooltip" class="btn btn-default txt-color-greenLight" href="javascript:void(0);" style="padding:5px 8px;background:none repeat scroll 0 0 transparent;box-shadow:none;" onclick="showPayCourse(\''.$dCursos['id_cursos'].'\','.$dCursos['id_metodos_pago'].');" type="button"><i class="fa fa-lg fa-fw fa-money"></i></button>';
	$data['tbody'] .= '<button data-original-title="Realizar una consulta" data-placement="top" rel="tooltip" class="btn btn-default txt-color-blueLight" style="padding:5px 8px;background:none repeat scroll 0 0 transparent;box-shadow:none;" onclick="showConsultaCurso(\''.$dCursos['id_cursos'].'\');" type="button"><i class="fa fa-lg fa-fw fa-comment-o"></i></button>';
	$data['tbody'] .= '<button data-original-title="Datos del curso" data-placement="top" rel="tooltip" class="btn btn-default txt-color-yellow" style="padding:5px 8px;background:none repeat scroll 0 0 transparent;box-shadow:none;" onclick="showCourseData('.$dCursos['id_cursos'].');" type="button"><i class="fa fa-lg fa-fw fa-folder"></i></button>';
	$data['tbody'] .= '<button data-original-title="Dar de baja inscripción" data-placement="top" rel="tooltip" class="btn btn-default txt-color-red" style="padding:5px 8px;background:none repeat scroll 0 0 transparent;box-shadow:none;" onclick="deleteCurso(\''.$dCursos['titulo'].'\','.$dCursos['id_cursos'].');" type="button"><i class="fa fa-lg fa-fw fa-minus-square"></i></button>';
	 
	$data['tbody'] .= '</td>';
	$data['tbody'] .= '</tr>';

	$countCursos++;
}

$data['thead'].='<tr><th>Curso</th><th>Comienzo</th><th>Cierre inscripción</th><th>Opciones</th></tr></thead>';

$curosList.= '<section id="widget-grid" class="col-sm-12 col-md-12 col-lg-12">';
$curosList.= tableNormalMsg3($data['thead'],$data['tbody'],'Listado de Cursos',null,array('id' => 33) );
$curosList.= '</section>';
$curosList.= '<br class="cl" />';

$curosList.= "<script>$('.show-tooltip').each(function(e) {
    var p = $(this).parent();
    if(p.is('td')) {
        /* if your tooltip is on a <td>, transfer <td>'s padding to wrapper */
        $(this).css('padding', p.css('padding'));
        p.css('padding', '0 0');
    }
    $(this).tooltip({
        toggle: 'toolip',
        placement: 'bottom'
    });
});</script>";

if($_GET['inscribe'] == 1 && isset($_GET['curso']))
{
$r = $db->query("SELECT titulo FROM t_cursos WHERE id_cursos = '".$_GET['curso']."'");
$dCursoInscribed = $db->fetchArray($r);

$jsActions .=  "cursoAdded('".$dCursoInscribed['titulo']."');"."\r\n";
}

$tpl->smarty->assign("sectionCursos",$sectionCursos);
$tpl->smarty->assign("comboEducacion",$comboEducacion);
$tpl->smarty->assign("comboConocio",$comboConocio);
$tpl->smarty->assign("pPagos",$pPagos);
$tpl->smarty->assign("curosList",$curosList);
$tpl->smarty->assign("countCursos",$countCursos);
$tpl->smarty->assign("sTab",(isset($_GET['sTab']) ? $_GET['sTab'] : 1));