<?php

$tpl->indexDisplay = 'indexEmpty.tpl';


$r = $db->query("SELECT * FROM t_cursos WHERE id_cursos = '".$_GET['curso']."'");
$d = $db->fetchArray($r);

switch($_GET['method'])
{
	case 2:
		$tpl->templateBody = 'pagarCurso_paypal.tpl';

		$html['cartItem'] = '<div id = "item_1" class = "itemwrap">
							    <input name = "item_name_1" value = "'.$d['titulo'].'" type = "hidden">
							    <input name = "quantity_1" value = "1" type = "hidden">
							    <input name = "amount_1" value = "'.$d['precio_internacional'].'" type = "hidden">
							    <input name = "shipping_1" value = "0" type = "hidden">
							 </div>';
	break;

}
