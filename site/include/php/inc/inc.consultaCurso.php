<?php

$tpl->indexDisplay = 'indexEmpty.tpl';
$tpl->templateBody = 'consultaCurso.tpl';

$r = $db->query("SELECT * FROM t_cursos WHERE id_cursos = '".$_GET['curso']."'");
$d = $db->fetchArray($r);