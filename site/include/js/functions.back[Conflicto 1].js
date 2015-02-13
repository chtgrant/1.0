$(document).ready(function () {

$.varGlobalCstm = new Object();
$.varGlobalCstm.ponds = '';

});//end document

function composeMailCarga(id)
{
	openRemote(Cfg._ROOT+'?body=carga&section=composeMail&key='+id);
}

function solicitarCarga()
{
	var cols = retMassChkArray();
	$.ajax({
		type: "POST",
		url: Cfg.CFG_FOL_LOAD+"validate.solicitar.carga.php",
		data: "cargas="+JSON.stringify(cols),
		dataType: 'json',
		success: function(response) {
			if(!response.state)
				openRemote(Cfg._ROOT+'?body=planilla_carga&section=edit&return=solicitar_carga&noRefresh=1&id_transportes='+response.id_transporte+'&items='+JSON.stringify(cols),800);
			else
				messageBox('error','ERROR','Las cargas deben pertenecer a un mismo transporte');

		}
	});
	
}

function addCargaMessage()
{
	var msg = infoMsg(3,'Nota','Utilice los checkbox de la primera columna para seleccionar las cargas a solicitar. Luego presione el botón verde "Solicitar Carga"');
	$("#widget-grid-0 .widget-body").prepend(msg);
}

function generarCotizacion(id_pedido)
{
	setLoadingOverlay('Generando cotización');
	$.ajax({
		type: "POST",
		url: Cfg.CFG_FOL_MOD+"generar.cotizacion.php",
		data: "id_pedido="+id_pedido,
		success: function(data) {
			if(data == 1)
				var a = 1;//window.location.href='?body=cotizaciones';
			else if(data == 3)
			{
				removeOverlay();
				messageBox('error','ERROR','La cotización ya fue generada.');
			}
			else
			{
				removeOverlay();
				messageBox('error','ERROR','No se generó la cotización.');
			}
		}
	});
}

function getMoneyIcon(v)
{
	var icon = '';
	if(v == 1)
		icon = 'fa-usd'; 
	if(v == 2)
		icon = 'fa-eur'; 
	if(v == 3)
		icon = 'fa-usd'; 
	/*switch(v)
	{
		case 1: 
			alert("CCC");
		break;
		case 2: 
			alert("BBB");
		break;
		case 3: 
			alert("AAA");
		break;
		default: alert(v); break;
	}*/
	
	return icon;
}
function chgMoneySign(val)
{
	var icon = getMoneyIcon(val);
	$("#valor_mercaderia").closest('.input-group').find('i').removeClass('fa-usd').addClass(icon);
}