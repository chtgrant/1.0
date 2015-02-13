<?php

$tabs ='
<ul id="myTab1" class="nav nav-tabs bordered" style="border-top:0;background:transparent;">
  <li class="active" style="background:#FFF;">
    <a href="#sTab_perfil" data-toggle="tab" id="aTab_perfil">Editar</a>
  </li>';
if($key) // TABS
{
	$tabs.= addTab($body,'cursos_profesores',$key,$tabCount,$secAttr,'Profesores');
	$tabs.= addTab($body,'cursos_unidades',$key,$tabCount,$secAttr,'Unidades');
}
$tabs.='</ul>';
$tabs.='<div id="myTabContent1" class="tab-content padding-10" style="background:#FFF;">
  <div class="tab-pane fade in active" id="sTab_perfil">'.$sectionAttr['content'].'</div>';

if($key) // TAB CONTENT
{
	$tabs.='<div class="tab-pane fade" id="sTab_cursos_profesores"></div>';
	$tabs.='<div class="tab-pane fade" id="sTab_cursos_unidades"></div>';
}

$tabs.='</div>
<script type="text/javascript"></script>
';
