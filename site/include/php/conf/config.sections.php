<?php
include 'config.default.values.php';//DEFAULT VALUES

//SECTIONS EDITION

// parametros por default:
//
// orderField -> orden por el cual vendrá el listado por default
// orderView -> ASC o DESC
// showOnDelete -> número de columna cuyo valor será tomado para preguntar ¿Está seguro que desea borrar el campo 'showOnDelete'?
// validateNone -> T o F para si se valida o no la sección
// showAll -> T o F Para si se deben mostrar TODAS las columnas. De ir F se debe especificar cuales se muestran.
// noEditAll -> T o F Si se pueden editar los campos de la sección.
// noReset -> T o F Para agregar un checkbox en todos los campos que al tildarlo el valor se mantendría para una carga de datos más rápida.
//
// Listquery
//
// $tables[$sectionVar]["Listquery"] La sentencia deberá arrancar desde los campos del select, se puede usar JOIN, etc.
//
//Filters ($tables[$sectionVar]["filters"])
//
// search -> array con nombre de campos por los cuales hacer búsqueda genérica con LIKE
// select1, select2, etc. array con parámetro 1 nombre de campo (id_tabla) y parámetro 2 el título para el filtro. el parámetro 1 deberá estar definido en los combos.
//
// $tables[$sectionVar]["ListNames"] Título de los campos para el listado 
// $tables[$sectionVar]["ListExclude"] Campos que deberían estar excluídos del listado pero se necesitan que estén en el 'Listquery'
// $tables[$sectionVar]["editFieldsHide"] NOMBRECAMPO => TRUE. Para que no muestre un campo
// $tables[$sectionVar]["editFieldsAlias"] NOMBRE CAMPO BASE => ALIAS para el form de la edición.
// $tables[$sectionVar]["editFieldsNoValid"] NOMBRECAMPO => TRUE. No validar este campo
// $tables[$sectionVar]["editFieldsValidation"] NOMBRECAMPO => TRUE. Listado de campos a validar (para el caso de tener seteado 'validateNone' => TRUE en el default)
// $tables[$sectionVar]["editFieldsAddNew"] NOMBRECAMPO => TRUE. Para que  se puede agregar un registro del select en cuestión agregandole el + al lado del select.
// $tables[$sectionVar][NOMBRECAMPO]['attr'] ATTR => VALUE para los atributos de los campos EJ: $tables[$sectionVar]["titulo"]['attr'] = array('maxlength'=>70);
// $tables[$sectionVar]["editOnList"][NOMBRECAMPO] 'action'=>'changeChkValue' para los valores tipo checkbox,'changeTxtValue' para los que son select o texto (Se define dentro del archivo actions.php) 
//
// Tipo de campos:
// 
// $tables[$sectionVar]["editFieldsType"] NOMBRECAMPO => 'tipo' Tipos:
// select (combo) Se carga como $tables[$sectionVar]["IDTABLA"] parms: query, campos, onchange, class
// textArea Se puede con HTML o sin html: $tables[$sectionVar]["NOMBRECAMPO"]['txt'] = array('NOHTML',700,140); NOHTML/HTML,width,height
// file. Se debe especificar: $tables[$sectionVar]["NOMBRECAMPO"] parms: types, detinationFolder, size (array para versiones,0 sin resize), watermark, keepOriginal, multi, quantity, tableMulti, title, fileType
// checkbox
//
// Atributos para los campos:
//
// Se configuran con el parámetro $tables[$sectionVar]["CAMPO"]['attr'] = array('maxlength'=>70);
// se puede activar en los select el CHOSEN (búsqueda dentro del select) con el siguiente parámetro como clase del comboBox: autoFill-enabled
//
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "banners";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.'banners';
		$tables[$sectionVar]["default"] = array('orderField'=>'titulo','orderView'=>'ASC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,'noEditAll'=>false,'noReset'=>false,'customForm'=>false);

		$tables[$sectionVar]["Listquery"] = "
											 u.titulo,
											 u.link,
											 u.orden,
											 u.publicado
											 FROM ".$tables[$sectionVar]["table"]." u
											 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'generic'=>array('titulo','Título'),
											);
		$tables[$sectionVar]["ListNames"] = array('Título','Link','Orden','Publicado');
		$tables[$sectionVar]["ListExclude"] = array();
		$tables[$sectionVar]["editFieldsHide"]=array('notas'=>true);
		$tables[$sectionVar]["NoEditFields"]=array('id_clientes'=>true);
		$tables[$sectionVar]["editFieldsAlias"]=array();
		$tables[$sectionVar]["editFieldsNoValid"]=array('codigo'=>true,'provincia_otro'=>true,'ciudad_otro'=>true,'piso'=>true,'departamento'=>true,'img'=>true);
		$tables[$sectionVar]["editFieldsValidation"]=array();
		$tables[$sectionVar]["editFieldsAddNew"]=array();
		$tables[$sectionVar]["editFieldsType"]=array(
													'publicado'=>'checkbox',
													'descripcion'=>'textArea',
													'img'=>'file'
													);
		
		$tables[$sectionVar]["editOnList"]["publicado"]=array('action'=>'changeChkValue');

		//$tables[$sectionVar]["observaciones"]['txt'] = array('NOHTML',700,140);

		$tables[$sectionVar]["img"] = array(
											'types'=>'*.jpg;',//extensiones
											'detinationFolder'=>CFG_PWD.'/'.CFG_SUBFOL.'/site/media/upload/',
											'size'=>0, //array(400,560),
											'watermark'=>false,
											'keepOriginal'=>false,
											'savePath'=>false,
											'multi'=>true,
											'quantity'=>1,
											'title'=>'Agregar',
											'fileType'=>'image'
												);

// Dynamic


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "cursos";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.'cursos';
		//$tables[$sectionVar]["parentKey"]['id_clientes'] = true;
		$tables[$sectionVar]["default"] = array('orderField'=>'u.date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);
		
		$tables[$sectionVar]["id_cursos_modalidad"]=array("SELECT id_cursos_modalidad,nombre AS nombre FROM t_cursos_modalidad" , array('id_cursos_modalidad','nombre'),null,'autoFill-enabled');
		$tables[$sectionVar]["id_cursos_categorias"]=array("SELECT id_cursos_categorias,nombre AS nombre FROM t_cursos_categorias" , array('id_cursos_categorias','nombre'),null,'autoFill-enabled');
		$tables[$sectionVar]["id_cursos_subcategorias"]=array("SELECT id_cursos_subcategorias,nombre AS nombre FROM t_cursos_subcategorias" , array('id_cursos_subcategorias','nombre'),null,'autoFill-enabled');
		$tables[$sectionVar]["id_cursos_tipos"]=array("SELECT id_cursos_tipos,nombre AS nombre FROM t_cursos_tipos" , array('id_cursos_tipos','nombre'),null,'autoFill-enabled');

		$tables[$sectionVar]["Listquery"] = "
									 u.titulo,
									 m.nombre AS modalidad,
									 c.nombre AS categoria,
									 s.nombre AS subcategoria,
									 t.nombre AS tipo,
									 u.fecha_comienzo,
									 u.publicado
									 FROM ".$tables[$sectionVar]["table"]." u
									 LEFT JOIN t_cursos_modalidad m ON m.id_cursos_modalidad = u.id_cursos_modalidad
									 LEFT JOIN t_cursos_categorias c ON c.id_cursos_categorias = u.id_cursos_categorias
									 LEFT JOIN t_cursos_subcategorias s ON s.id_cursos_subcategorias = u.id_cursos_subcategorias
									 LEFT JOIN t_cursos_tipos t ON t.id_cursos_tipos = u.id_cursos_tipos
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'generic'=>array('u.titulo','p.apellido'),
											'search1'=>array(
															'field'=>'u.titulo','title'=>'Título'),
											'select1'=>array(
															'field'=>'m.id_cursos_modalidad','title'=>'Modalidad'),
											'select2'=>array(
															'field'=>'c.id_cursos_categorias','title'=>'Categoría'),
											'select3'=>array(
															'field'=>'t.id_cursos_tipos','title'=>'Tipo')
											);
		$tables[$sectionVar]["ListNames"] = array('Título','Modalidad','Categoría','Subcategoría','Tipo','Comienzo','Publicado');
		$tables[$sectionVar]["editFieldsType"]=array(
													'publicado'=>'checkbox',
													'proximamente'=>'checkbox',
													'destacado_home'=>'checkbox',
													'nuevo_curso'=>'checkbox',
													'finalizado'=>'checkbox',
													'breve_descripcion'=>'textArea',
													'objetivo'=>'textArea',
													'datos_curso'=>'textArea',
													'id_cursos_modalidad'=>'select',
													'id_cursos_categorias'=>'select',
													'id_cursos_subcategorias'=>'select',
													'id_cursos_tipos'=>'select',
													'img'=>'file',
													'keywords'=>'tags'
													);
		$tables[$sectionVar]["editOnList"]["publicado"]=array('action'=>'changeChkValue');
		$tables[$sectionVar]["breve_descripcion"]['txt'] = array('NOHTML',700,100);
		$tables[$sectionVar]["objetivo"]['txt'] = array('NOHTML',700,100);
		$tables[$sectionVar]["keywords"]['fieldHelp'] = 'Ingresar las Keywords de a una presionando enter.';
		$tables[$sectionVar]["lugar"]['fieldHelp'] = 'Ingresar la dirección como está en Google Maps.';
		$tables[$sectionVar]["img"] = array(
											'types'=>'*.jpg;',//extensiones
											'detinationFolder'=>CFG_PWD.'/'.CFG_SUBFOL.'/site/media/upload/',
											'size'=>0, //array(400,560),
											'watermark'=>false,
											'keepOriginal'=>false,
											'savePath'=>false,
											'multi'=>true,
											'quantity'=>1,
											'title'=>'Agregar',
											'fileType'=>'image'
												);


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "cursos_profesores";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.'cursos_profesores';
		$tables[$sectionVar]["parentKey"]['id_cursos'] = true;
		$tables[$sectionVar]["default"] = array('orderField'=>'apellido','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);
		
		$tables[$sectionVar]["id_profesores"]=array("SELECT id_profesores,CONCAT(nombre, ' ', apellido) AS nombre FROM t_profesores" , array('id_profesores','nombre'),null,'autoFill-enabled');

		$tables[$sectionVar]["Listquery"] = "
									 p.nombre,
									 p.apellido,
									 p.email_laboral,
									 p.telefonos
									 FROM ".$tables[$sectionVar]["table"]." u
									 LEFT JOIN t_profesores p ON u.id_profesores = p.id_profesores
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'search1'=>array(
															'field'=>'p.apellido','title'=>'Apellido')
											);
		$tables[$sectionVar]["ListNames"] = array('Nombre','Apellido','Email','Teléfono');
		$tables[$sectionVar]["editFieldsType"]=array(
													'id_profesores'=>'select'
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
											'title'=>'Agregar',
											'fileType'=>'image'
												);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "cursos_unidades";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.'cursos_unidades';
		$tables[$sectionVar]["parentKey"]['id_cursos'] = true;
		$tables[$sectionVar]["default"] = array('orderField'=>'date_added','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);
		
		$tables[$sectionVar]["Listquery"] = "
									 u.titulo,
									 u.texto
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'search1'=>array(
															'field'=>'p.titulo','title'=>'Unidad')
											);
		$tables[$sectionVar]["ListNames"] = array('Título','Texto');
		$tables[$sectionVar]["editFieldsType"]=array(
													'texto'=>'textArea'
													);


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "profesores";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.'profesores';
		//$tables[$sectionVar]["parentKey"]['id_clientes'] = true;
		$tables[$sectionVar]["default"] = array('orderField'=>'apellido','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);
		
		$tables[$sectionVar]["id_profesores_estados"]=array("SELECT id_profesores_estados,nombre AS nombre FROM t_profesores_estados" , array('id_profesores_estados','nombre'));

		$tables[$sectionVar]["Listquery"] = "
									 u.nombre,
									 u.apellido,
									 u.email_laboral,
									 u.telefonos
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'search1'=>array(
															'field'=>'apellido','title'=>'Apellido')
											);
		$tables[$sectionVar]["ListNames"] = array('Nombre','Apellido','Email','Teléfono');
		$tables[$sectionVar]["editFieldsType"]=array(
													'id_profesores_estados'=>'select',
													'img'=>'file'
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
											'title'=>'Agregar',
											'fileType'=>'image'
												);
		//$tables[$sectionVar]["onSave"]['redir'] = true;
		//$tables[$sectionVar]["onSave"]['redirParams'] = array('body'=>'clientes','section'=>'jerarquia','id_jerarquia'=>'%%idRegister%%','key'=>'%%_POST[id_clientes]%%');



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$sectionVar = "alumnos";

		$tables[$sectionVar]["sectionVar"] = $sectionVar;
		$tables[$sectionVar]["cols"] = 2;
		$tables[$sectionVar]["table"] = CFG_DB_PREFIX.'alumnos';
		//$tables[$sectionVar]["parentKey"]['id_clientes'] = true;
		$tables[$sectionVar]["default"] = array('orderField'=>'apellido','orderView'=>'DESC','showOnDelete'=>1,'validateNone'=>true,'showAll'=>true,
												'noEditAll'=>false,'noReset'=>false);
		
		$tables[$sectionVar]["id_profesores_estados"]=array("SELECT id_profesores_estados,nombre AS nombre FROM t_profesores_estados" , array('id_profesores_estados','nombre'));

		$tables[$sectionVar]["Listquery"] = "
									 u.nombre,
									 u.apellido,
									 u.email,
									 u.telefono_fijo
									 FROM ".$tables[$sectionVar]["table"]." u
									 WHERE true ";
		$tables[$sectionVar]["filters"] = array(
											'search1'=>array(
															'field'=>'apellido','title'=>'Apellido')
											);
		$tables[$sectionVar]["ListNames"] = array('Nombre','Apellido','Email','Teléfono');
		$tables[$sectionVar]["editFieldsType"]=array(
													'id_profesores_estados'=>'select',
													'img'=>'file'
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
											'title'=>'Agregar',
											'fileType'=>'image'
												);


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
