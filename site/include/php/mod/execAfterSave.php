<?php

if($secAttr['sectionVar'] == 'planilla_carga' && !$id)
{
	$cargas = json_decode(urldecode($_POST['cargas']));
	$msg.= '<script>';
	for($i=0;$i<count($cargas);$i++)
	{
		$db->query("INSERT INTO t_planilla_carga_detalle (id_planilla_carga,id_carga,date_added,last_update,id_user_last_update) VALUES(".$last.",'".$cargas[$i]."',now(),now(),'".$_SESSION['userF']['id']."');");
		$db->query("UPDATE t_carga SET id_canal = 4 WHERE id_carga = '".$cargas[$i]."'");
		$msg.= '$("#row_'.$cargas[$i].'", window.parent.document).hide();'."\r\n";
		
	}
	$msg.= $file == 'actions' ? 'uncheckAllMass();' : 'parent.parent.uncheckAllMass();'."\r\n";
	$msg.= '</script>';
}

if($secAttr['sectionVar'] == 'pedidos' && !$id)
{
	$db->query("UPDATE t_pedidos SET codigo = 'PED-".str_pad($last,8,'0',STR_PAD_LEFT)."' WHERE id_cotizaciones = '".$last."'");
}

if($secAttr['sectionVar'] == 'operacion' && !$id)
{
	$db->query("UPDATE t_cotizaciones SET id_cotizaciones_estados = 4 WHERE id_cotizaciones = '".$_POST['id_cotizaciones']."'");
	$db->query("UPDATE t_operacion SET codigo = 'OPE-".str_pad($last,8,'0',STR_PAD_LEFT)."',id_operacion_estado = 1 WHERE id_operacion = '".$last."'");
	$msg.= '<script>$("#row_'.$_POST['id_cotizaciones'].'", window.parent.document).hide();</script>'."\r\n";
}

if($secAttr['sectionVar'] == 'cotizaciones' && $id && $_POST['id_motivo_rechazo'] !=0 && $_SESSION['userF']['profile'] == 6)
{
	$db->query("UPDATE t_cotizaciones SET id_cotizaciones_estados = 3 WHERE id_cotizaciones = '".$id."'");
}

if($secAttr['sectionVar'] == 'clientes_exportador' && !$id)
{
	$msg .= '<script type="text/javascript">';
	$msg .= 'parent.document.location.href=\''.CFG_URL.'?body=clientes_exportador&section=edit&key='.$last.'&tab=clientes_exportador_contactos&autoAdd=1\';';
	$msg .= '</script>';
}
