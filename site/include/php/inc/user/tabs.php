<?php

$tabs ='
<ul id="myTab1" class="nav nav-tabs bordered" style="border-top:0;background:transparent;">
  <li class="active" style="background:#FFF;">
    <a href="#sTab_perfil" data-toggle="tab" id="aTab_perfil">User</a>
  </li>';
if($key) // TABS
{
	$tabs.= addTab($body,'userprofiles_perms',$key,$tabCount,$secAttr,'Permisos');
	$tabs.= addTab($body,'userlogs',$key,$tabCount,$secAttr,'Logs');

}
$tabs.='</ul>';
$tabs.='<div id="myTabContent1" class="tab-content padding-10" style="background:#FFF;">
  <div class="tab-pane fade in active" id="sTab_perfil">'.$sectionAttr['content'].'</div>';

if($key) // TAB CONTENT
{
	$tabs.='<div class="tab-pane fade" id="sTab_userprofiles_perms"></div>';
	$tabs.='<div class="tab-pane fade" id="sTab_userlogs"></div>';
}

$tabs.='</div>
<script type="text/javascript"></script>
';
