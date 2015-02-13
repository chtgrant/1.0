<?php
include CFG_FOL_CFG_FWRK.'section.header.php';

$tabCount = $section == 'edit' ? tabCount($db,$key,$body,$tables,array('carga_fotos','userlogs')) : null;

switch($section)
{

	case 'list':
		if(file_exists(CFG_FOL_INC.$folTpl.$section.'.php'))include CFG_FOL_INC.$folTpl.$section.'.php';
		$dataDisplay = setDataDisplay($db,$secAttr,$body,$section,$_LANG,$registrosPagina,$page,$key);
	break;

	default:
		include CFG_FOL_CFG_FWRK.'formSection.defaults.php';
	break;

	
}

include tabs($body);
