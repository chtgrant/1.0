<?php

ob_start();
include CFG_FOL_MODULES.'wordpress/posts.php';
$wpPosts = ob_get_clean();

$type = $_GET['type'] ? $_GET['type'] : null;
$cat = $_GET['category'] ? $_GET['category'] : null;

$sectionCursos['listCursos'] = listCursos($db,$type,$cat);
$sectionCursos['title'] = $type ? ucfirst($type) : ucfirst($cat);

$tpl->smarty->assign("sectionCursos",$sectionCursos);
$tpl->smarty->assign("wpPosts",$wpPosts);
