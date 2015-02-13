<?php

$rel = getRelTable($db);
$filterProfile = $rel['rel_col'] ? " AND ".$rel['rel_col']." = ".$_SESSION['userF']['id_rel'] : null;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////    SYSTEM USERS     ///////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$sectionVar = "user";

$tables[$sectionVar]["sectionVar"] = $sectionVar;
$tables[$sectionVar]["cols"] = 2;
$tables[$sectionVar]["table"] = 't_user';
$tables[$sectionVar]["default"] = array('orderField'=>'lastname','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
										'editAll'=>true,'noEditAll'=>false,'exportAllFields'=>true);

$tables[$sectionVar]["id_userprofiles"] = mkComboBoxSection($db,'id_userprofiles',array('nameShow'=>'name'));

$tables[$sectionVar]["Listquery"] = "
									 u.name,
									 u.lastname,
									 u.email,
									 p.name AS profile,
									 u.date_added
									 FROM ".$tables[$sectionVar]["table"]." u
									 LEFT JOIN t_userprofiles p ON p.id_userprofiles = u.id_userprofiles
									 WHERE true ";
$tables[$sectionVar]["filters"] = array(
									'generic'=>array('u.name','u.lastname','u.email')
									);
$tables[$sectionVar]["ListNames"] = array('Nombre','Apellido','Email','Perfil','Fecha Alta');
$tables[$sectionVar]["ListExclude"] = array();
$tables[$sectionVar]["editFieldsHide"]=array('lang_def'=>true);
//$tables[$sectionVar]["NoEditFields"]=array('id_clientes'=>true);
$tables[$sectionVar]["editFieldsShow"]=array();
$tables[$sectionVar]["editFields"]=array();
$tables[$sectionVar]["editFieldsAlias"]=array();
$tables[$sectionVar]["editFieldsNoValid"]=array();
$tables[$sectionVar]["editFieldsValidation"]=array();
$tables[$sectionVar]["editFieldsType"]=array(
											'id_userprofiles'=>'select',
											'active'=>'checkbox',
											'img'=>'file',
											'sex'=>'enum'
											);
$tables[$sectionVar]["img"] = array(
											'types'=>'*.jpg;',//extensiones
											'detinationFolder'=>CFG_PWD.'/'.CFG_SUBFOL.'/site/media/upload/',
											'size'=>0, //array(400,560),
											'watermark'=>false,
											'keepOriginal'=>false,
											'savePath'=>false,
											'multi'=>true,
											'quantity'=>1,
											'tableMulti'=>CONFIG_TABLE,
											'title'=>'Agregar',
											'fileType'=>'image'
												);
$tables[$sectionVar]["editOnList"]["active"]=array( 'action'=>'changeChkValue' );
$tables[$sectionVar]["colShow"] = "CONCAT(name,' ',lastname) AS nombre";


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "userlang";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.$sectionVar;
		$tables[$sectionVar]["default"] = array('orderField'=>'date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);

		$tables[$sectionVar]["Listquery"] = "
									 u.lang_name,
									 u.code,
									 u.default
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'search1'=>array(
															'field'=>'u.nombre','title'=>'Buscar')
											);
		$tables[$sectionVar]["ListNames"] = array('Nombre','Código','Default');
		$tables[$sectionVar]["editFieldsType"]=array('default'=>'checkbox');
		$tables[$sectionVar]["editOnList"]["default"]=array( 'action'=>'changeChkValue' );



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "usernav";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.$sectionVar;
		$tables[$sectionVar]["default"] = array('orderField'=>'u.id_userprofiles,u.parent_id,u.section_order','orderView'=>'ASC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);

		$tables[$sectionVar]["id_userprofiles"] = array("SELECT id_userprofiles,name AS nombre FROM t_userprofiles" , array('id_userprofiles','nombre'));
		$tables[$sectionVar]["parent_id"] = array("SELECT u.id_usernav,CONCAT(p.name,' ',u.section_name) AS nombre FROM t_usernav u LEFT JOIN t_userprofiles p ON p.id_userprofiles = u.id_userprofiles" , array('id_usernav','nombre'));
		$tables[$sectionVar]["Listquery"] = "
									 p.name AS id_userprofiles,
									 u.id_usernav,
									 u.section_name,
									 u.master,
									 u.section_order
									 FROM ".$tables[$sectionVar]["table"]." u
									 LEFT JOIN t_userprofiles p ON p.id_userprofiles = u.id_userprofiles
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'generic'=>array('u.section_name','p.name'),
											'select1'=>array(
															'field'=>'u.id_userprofiles','title'=>'Perfil')
											);
		$tables[$sectionVar]["ListNames"] = array('Perfil','Id','Sección','Principal','Padre','Orden');
		$tables[$sectionVar]["editFieldsType"]=array('master'=>'checkbox','id_userprofiles'=>'select','parent_id'=>'select');
		$tables[$sectionVar]["editOnList"]["master"]=array( 'action'=>'changeChkValue' );		
		$tables[$sectionVar]["editOnList"]["section_order"]=array('action'=>'changeTxtValue');
		$tables[$sectionVar]["editOnList"]["id_userprofiles"]=array('action'=>'changeSelValue');
		$tables[$sectionVar]["editOnList"]["parent_id"]=array('action'=>'changeSelValue');


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "userprofiles";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.$sectionVar;
		$tables[$sectionVar]["default"] = array('orderField'=>'date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);

		$tables[$sectionVar]["rel_table"] = array("SELECT table_name AS nombre FROM information_schema.TABLES WHERE TABLE_SCHEMA = '".CFG_DB_BASE."'" , array('nombre'));
		$tables[$sectionVar]["parent_id"] = array("SELECT u.id_usernav,CONCAT(p.name,' ',u.section_name) AS nombre FROM t_usernav u LEFT JOIN t_userprofiles p ON p.id_userprofiles = u.id_userprofiles" , array('id_usernav','nombre'));
		$tables[$sectionVar]["Listquery"] = "
									 u.name,
									 u.rel_table,
									 u.rel_col,
									 u.active
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'generic'=>array('u.name'),
											'select1'=>array(
															'field'=>'table_name','title'=>'Tabla')
											);
		$tables[$sectionVar]["ListNames"] = array('Nombre','Tabla','Columna');
		$tables[$sectionVar]["editFieldsType"]=array('active'=>'checkbox','rel_table'=>'select');
		$tables[$sectionVar]["editOnList"]["active"]=array( 'action'=>'changeChkValue' );		
		$tables[$sectionVar]["editOnList"]["rel_table"]=array('action'=>'changeTxtValue');
		$tables[$sectionVar]["editOnList"]["re_col"]=array('action'=>'changeTxtValue');
		$tables[$sectionVar]["editOnList"]["name"]=array('action'=>'changeTxtValue');
		$tables[$sectionVar]["editOnList"]["rel_table"]=array('action'=>'changeSelValue');		

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "userprofiles_perms";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.$sectionVar;
		$tables[$sectionVar]["default"] = array('orderField'=>'u.date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);

		$tables[$sectionVar]["table_perms"] = array("SELECT table_name AS nombre FROM information_schema.TABLES WHERE TABLE_SCHEMA = '".CFG_DB_BASE."'" , array('nombre'));
		$tables[$sectionVar]["id_userprofiles"] = array("SELECT id_userprofiles,name AS nombre FROM t_userprofiles" , array('id_userprofiles','nombre'));

		$tables[$sectionVar]["Listquery"] = "
									 p.name AS profile,
									 ".(CFG_USER_EMAIL ? "uu.email" : "uu.user")." AS user,
									 u.table_perms,
									 u.section,
									 u.all_perms,
									 u.insert_perms,
									 u.update_perms,
									 u.delete_perms,
									 u.view_perms,
									 u.export_perms,
									 u.active
									 FROM ".$tables[$sectionVar]["table"]." u
									 LEFT JOIN t_userprofiles p ON p.id_userprofiles = u.id_userprofiles
									 LEFT JOIN t_user uu ON uu.id_user = u.id_user
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'select1'=>array(
															'field'=>'table_name','title'=>'Tabla')
											);
		$tables[$sectionVar]["ListNames"] = array('Perfil','Usuario','Tabla','Sección','Super','Insertar','Actualizar','Borrar','Ver','Exportar','activo');
		$tables[$sectionVar]["editFieldsType"]=array('active'=>'checkbox','table_perms'=>'select','all_perms'=>'checkbox','insert_perms'=>'checkbox','update_perms'=>'checkbox','delete_perms'=>'checkbox',
													'view_perms'=>'checkbox','export_perms'=>'checkbox','active'=>'checkbox','id_userprofiles'=>'select');
		$tables[$sectionVar]["editOnList"]=array(
												'active' =>array( 'action'=>'changeChkValue'),
												'all_perms' =>array( 'action'=>'changeChkValue'),
												'insert_perms' =>array( 'action'=>'changeChkValue'),
												'update_perms' =>array( 'action'=>'changeChkValue'),
												'delete_perms' =>array( 'action'=>'changeChkValue'),
												'view_perms' =>array( 'action'=>'changeChkValue'),
												'export_perms' =>array( 'action'=>'changeChkValue')
												);		
		

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "useraudit";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.$sectionVar;
		$tables[$sectionVar]["default"] = array('orderField'=>'u.date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);

		$tables[$sectionVar]["table_name"] = array("SELECT table_name AS nombre FROM information_schema.TABLES WHERE TABLE_SCHEMA = '".CFG_DB_BASE."'" , array('nombre'));
		
		$tables[$sectionVar]["Listquery"] = "
									 u.table_name,
									 u.date_added,
									 u.active
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'generic'=>array('u.table_name')
											);
		$tables[$sectionVar]["ListNames"] = array('Tabla','Agregado','Activo');
		$tables[$sectionVar]["editFieldsType"]=array('active'=>'checkbox','table_name'=>'select');
		$tables[$sectionVar]["editOnList"]["active"]=array( 'action'=>'changeChkValue' );		
		$tables[$sectionVar]["editOnList"]["table_name"]=array('action'=>'changeSelValue');


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "userbackup";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.$sectionVar;
		$tables[$sectionVar]["default"] = array('orderField'=>'u.date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);

		$tables[$sectionVar]["table_name"] = array("SELECT table_name AS nombre FROM information_schema.TABLES WHERE TABLE_SCHEMA = '".CFG_DB_BASE."'" , array('nombre'));
		
		$tables[$sectionVar]["Listquery"] = "
									 u.description,
									 u.file,
									 u.date_added
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'generic'=>array('u.table_name')
											);
		$tables[$sectionVar]["ListNames"] = array('Descripcion','Archivo','Fecha');
		$tables[$sectionVar]["editOnList"]["file"]=array( 'action'=>'custom','icon'=>'icons/icon_sql_32.png','function'=>'showBackupActions(%id_userbackup%);','txt'=>'Acciones a realizar con el backup.' );		
		$tables[$sectionVar]["butActions"]["add"] = "createNewBackup();";	

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////     DEFAULT DATA      ///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$pres['datos_curso']=<<<DATA
---------------------------------------------
DATA;

?>