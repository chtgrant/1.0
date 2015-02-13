<?php
ob_start();
include CFG_FOL_MODULES.'wordpress/posts.php';
$wpPosts = ob_get_clean();

$sectionCursos['listCursos'] = listCursos($db);

$q = $db->query("SELECT u.*,ct.clave
					 FROM t_cursos u
					 LEFT JOIN t_cursos_tipos ct ON u.id_cursos_tipos = ct.id_cursos_tipos
					 LEFT JOIN t_cursos_categorias cc ON cc.id_cursos_categorias = u.id_cursos_categorias
					 WHERE TRUE AND u.publicado = 1 AND  u.nuevo_curso = 1");
$row = $db->fetchArray($q);

$cursoNew = $row['id_cursos'] ? '
			<div class="home-curso-new">
				<div class="body-wrapper">
					<h2><span>Curso:</span> '.$d['titulo'].'</h2>
					<a href="'.CFG_URL.$row['clave'].'/'.strToUrl($row['titulo']).'/'.$row['id_cursos'].'/"><button class="btn btn-white">Inscribite ahora!</button></a>
				</div>
			</div>' : null;

$tpl->smarty->assign("cursoNew",$cursoNew);
$tpl->smarty->assign("sectionCursos",$sectionCursos);
$tpl->smarty->assign("wpPosts",$wpPosts);
