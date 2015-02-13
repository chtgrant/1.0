$(document).ready(function () {

$.varGlobalCstm = new Object();
$.varGlobalCstm.ponds = '';

});//end document



function editPreguntas(id_encuestas)
{
	$.fancybox.open({
		href : '?body=encuestas&section=preguntas&return=encuestas&returnSec=preguntas&id_encuestas='+id_encuestas,
		type : 'iframe',
		padding : 5
	});
}

function ratingMenuToggle(v,i)
{
	getPondVals(i);
}

function addPonderationHtml(ratingCount,vals)
{
	var vals = vals.split("|");
	var html = '<div style="display:block;margin:4px 0;" id="RatingDiv_'+ratingCount+'" class="rtngDiv">';
		html+= '<label for="RatingLabel_'+ratingCount+'">Etiqueta: </label>';
		html+= '<input type="text" style="width:200px;" class="notranslate" id="RatingLabel_'+ratingCount+'" name="RatingLabel_'+ratingCount+'" value="'+vals[0]+'">';//
		html+= '<label for="RatingWeight_'+ratingCount+'" style="margin:0 0 0 24px;">Ponderación: </label><input type="text" class="notranslate" id="RatingWeight_'+ratingCount+'" size="5" name="RatingWeight_'+ratingCount+'" value="'+vals[1]+'">';//
		html+= '</div>';
	
	return html;
}

function getPondVals(i)
{
	$.ajax({
		type: "POST",
		url: Cfg.CFG_FOL_LOAD+"loadPonderation.php",
		data: "id="+i,
		success: function(data) {
			var html = '';
			var vals = data.split("\n");
			for(var i=1;i<vals.length;i++)
				html += addPonderationHtml(i,vals[(i-1)]);
			$("#ratingdivs").html(html);
			calcAddNewHeight();
		}
	});

	return $.varGlobalCstm.ponds;
}
function toggleComment(obj, div1, div2)
{
	if($(obj).is(":checked"))
	{
		$("#"+div1).show();
		$("#"+div2).hide();
	}
	else
	{
		$("#"+div1).hide();
		$("#"+div2).show();
	}
	calcAddNewHeight();
}

function addmenuOptHtml(menuNr)
{
	var html = '<div style="display:block;" class="menufloat" id="MenuDiv_'+menuNr+'">';
		html+= 'Encabezado del menú n.º '+menuNr+': <input type="hidden" id="hid_mh_'+menuNr+'" name="hid_mh_'+menuNr+'">';
		html+= '<input type="text" style="width:200px;" class="notranslate" id="MenuHeading'+menuNr+'" name="MenuHeading_'+menuNr+'"><br>';
		html+= '<div style="margin-top: 5px">Opciones del menú n.º '+menuNr+':</div>';
		html+= '<textarea style="width:200px;margin-top:0px;" class="notranslate" id="MenuChoices_'+menuNr+'" wrap="off" cols="45" rows="5" name="MenuChoices_'+menuNr+'"></textarea>';
		html+= '<div id="ChoicePanel_'+menuNr+'"></div>';
		html+= '</div>';
	
	return html;
}

function matrixMenuToggle(v)
{
	var html = '';
	for(var i=1;i<=v;i++)
		html += addmenuOptHtml(i);
	$("#MenuCountDiv").html(html);
	calcAddNewHeight();
}

function nextStepPregunta(v)
{
	var i = $("#id_encuestas_preguntas").val();
	$.ajax({
		type: "POST",
		url: Cfg.CFG_FOL_LOAD+"loadNextPregunta.php",
		data: "type="+v+"&id_encuestas_preguntas="+i,
		success: function(data) {
			$('#tipoPregunta').html(data);
			calcAddNewHeight();
			//$('body').scrollTo('#tipoPregunta');
		}
	});
}

function validaFormPregunta()
{
	var vals = 'a=a';
	$('#formWrapper').find(':input').each(function(el){
		  vals += "&"+this.name+"="+this.value;
		});
	if($("#RatingCount").length)
	{
		var valPond = '';
		var counter = 1;
		$('#ratingdivs').find('div').each(function(el){ valPond+=$('#RatingLabel_'+counter).val()+'|'+$('#RatingWeight_'+counter).val()+"\n";counter+=1;});
		vals += "&options_columns="+valPond;
		
	}

	$.ajax({
		type: "POST",
		url: Cfg.CFG_FOL_MOD+"savePregunta.php",
		data: vals,
		success: function(data) {
			$('#contPostZone').html(data);
			//alert($('#id_encuestas_preguntas').val());
			reloadRow($.varGlobal.body,$.varGlobal.section,$('#id_encuestas_preguntas').val());
			hideAddNew();
		}
	});
}