<?php

ob_start();
include CFG_FOL_MODULES.'wordpress/posts.php';
$wpPosts = ob_get_clean();

$sectionCursos['listCursos'] = listCursos($db,str_replace("List","",$body));


$tpl->smarty->assign("sectionCursos",$sectionCursos);
$tpl->smarty->assign("wpPosts",$wpPosts);
