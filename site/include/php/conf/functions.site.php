<?php
/*FUNCTION OF THE SITE*/



function getTplFolder($body = null)
{
	if($body == CFG_ADMIN_ACCESS)
		$fol = 'back';
	else
	switch($_SESSION['userF']['profile'])
	{
		case 1:
		case 2:
			$fol = 'back';
		break;
		default:
			$fol = CFG_FOL_TPL_DEFAULT;
		break;
	}
	$fol = CFG_ONLY_ADMIN ? 'back' : $fol;
	return $fol;
}


function addHeader($tplFolder,$l = null)
{
	$l = !$l ? CFG_LANG_DEF : $l;
	$header .= '
	<!--[if IE]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!--[if lt IE 8]>
		<link href="ie7.css" rel="stylesheet" type="text/css">
	<![endif]-->'."\r\n";
	$header .= '<link rel="shortcut icon" href="'.CFG_FOL_IMG.$tplFolder.'/images/ui/ico.png" type="image/x-icon" />'."\r\n";
	$header .= '<script type="text/javascript" src="'.CFG_FOL_FWK_JS.'config.js.php?s='.$tplFolder.'&l='.$l.'" ></script>'."\r\n";

	return $header;
}


function listCursos($db,$type = null,$cat = null,$filter = null)
{
	$sql = "SELECT u.*,ct.clave
					 FROM t_cursos u
					 LEFT JOIN t_cursos_tipos ct ON u.id_cursos_tipos = ct.id_cursos_tipos
					 LEFT JOIN t_cursos_categorias cc ON cc.id_cursos_categorias = u.id_cursos_categorias
					 WHERE TRUE AND u.publicado = 1
					 ".($type ? " AND ct.clave = '".$type."'" : null)."
					 ".($cat ? " AND cc.nombre = '".$cat."'" : null)."
					 ".$filter."
					 ".($type ? null : " LIMIT 6")."
					 ";
	$q = $db->query($sql);//print $sql;
	while($d = $db->fetchArray($q))
	{
		switch($d['id_cursos_tipos'])
		{
			case 1:
				$class = 'yellow';
			break;
			default:
				$class='blue';
			break;
		}
		$html.= displayCurso($db,$class,$d);
	}
	$html.= '<br class="cl" />';

	return $html;
	
}
function displayCurso($db,$class,$row)
{
	$html = '
			<div class="curso-tn">
			<div style="height:220px;overflow:hidden;"><a href="'.CFG_URL.$row['clave'].'/'.strToUrl($row['titulo']).'/'.$row['id_cursos'].'/"><img src="'.CFG_FOL_UPLOAD_P.$row['img'].'" alt="" /></a></div>
				<h2><a href="'.CFG_URL.$row['clave'].'/'.strToUrl($row['titulo']).'/'.$row['id_cursos'].'/">'.$row['titulo'].'</a></h2>
				<p>'.$row['breve_descripcion'].'</p>
				<a href="'.CFG_URL.$row['clave'].'/'.strToUrl($row['titulo']).'/'.$row['id_cursos'].'/"><button class="btn btn-'.$class.'">+ Info</button></a>
			</div>';

	return $html;
}

function getUnidadesCurso($db,$key)
{
	/*preg_match_all('#<p>([^<>]*)+</p>#s', $txt, $regs);
	$t = '<div>';
	for($i=0;$i<count($regs[0]);$i++)
		$t.= preg_match("/>unidad/i",$regs[0][$i]) ? '</div><div class="curso-unidad">'.$regs[0][$i] : $regs[0][$i];
	$t.= '</div>';

	return str_replace('<div class="curso-unidad"></div>','',$t);*/
	$sql = "SELECT * FROM t_cursos_unidades WHERE id_cursos = '".$key."'";
	$q = $db->query($sql);//print $sql;
	while($d = $db->fetchArray($q))
		$p.= '<div class="curso-unidad"><p>'.$d['titulo'].'</p>'.$d['texto'].'</div>';
	return $p;
}

function tableNormalMsg3($head,$rows,$tit = null,$msg = null,$attr = array() )
{
	//$chkTh = $attr['chkTable'] ? '<th><label class="checkbox"><input type="checkbox" name="checkbox-inline"><i></i> </label></th>' : null;
	//<td><label class="checkbox"><input type="checkbox" name="checkbox-inline"><i></i> </label></td>
	//<a class="btn btn-xs btn-default pull-right" href="javascript:void(0);"><i class="fa fa-unsorted"></i></a>
	if($attr['oneRow'])
		$html = $rows;
	else
		$html = '
			<section id="widget-grid-'.($attr['id'] ? $attr['id'] : 0).'" class="">
				<!--div class="row" -->
					<!-- NEW WIDGET START -->
					<article class="col-xs-12 col-sm-12 col-md-12 col-lg-'.($attr['cols'] ? $attr['cols'] : 12).'">
						<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-'.($attr['id'] ? $attr['id'] : 0).'" data-widget-editbutton="true">
							 <header>
								<span class="widget-icon"> <i class="fa fa-table"></i> </span>
								<h2>'.($tit ? $tit : 'Data').'</h2>
							 </header>
							 <div style="width:100%;height:460px;border:0;background:url(\'/site/template/front/images/Student-at-Library.jpg\') center -600px transparent;"></div>
							<div>
								<!-- widget edit box -->
												<div class="jarviswidget-editbox">
													<!-- This area used as dropdown edit box -->

												</div>
												<!-- end widget edit box -->
								<div class="widget-body'.($attr['noPadding'] ? ' no-padding' : null).'">
								'.(strlen($attr['tableAlert']) ? //ALERT ON TABLE
								'<div class="alert alert-info no-margin fade in">
														<button class="close" data-dismiss="alert">×</button>
														<i class="fa-fw fa fa-info"></i>
														'.$attr['tableAlert'].'
													</div>'
								: null).'
								'.(strlen($msg) ? '<p>'.$msg.'</p>' : null ).'
								<table class="table table-hover table-bordered table-striped">
									<thead>'.$head.'</thead>
									<tbody>'.$rows.'</tbody>
								</table>
								</div>
							</div>
						</div>
					</article>
						<!-- WIDGET END -->
				<!-- /div -->

			</section>
			';

	return $html;
}