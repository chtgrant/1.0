$(document).ready(function () {

$.varGlobalCstm = new Object();
$.varGlobalCstm.obrasDcPos = 1;


	jQuery(window).scroll(function(){
		if(jQuery(window).scrollTop() > 400){
			jQuery("#back-to-top").fadeIn(200);
		} else{
			jQuery("#back-to-top").fadeOut(200);
		}
	});
	
	jQuery('#back-to-top, .back-to-top').click(function() {
		  jQuery('html, body').animate({ scrollTop:0 }, '800');
		  return false;
	});

// Cache the Window object
	$window = $(window);

   $('div[data-type="background"]').each(function(){
     var $bgobj = $(this); // assigning the object
                    
      $(window).scroll(function() {

      	var backgroundPos = $($bgobj).css('backgroundPosition').split(" ");
		//now contains an array like ["0%", "50px"]

		var xPosVar = backgroundPos[0],
		    yPosVar = backgroundPos[1];


                    
		// Scroll the background at var speed
		// the yPos is a negative value because we're scrolling it UP!								
		var yPos = -($window.scrollTop() / $bgobj.data('speed')); 
		
		// Put together our final background position
		var coords = '50% '+ yPos + 'px';

		// Move the background
		$bgobj.css({ backgroundPosition: coords });
		
}); // window scroll Ends

});

window.onscroll = function() {
        if (window.pageYOffset >= 30)
            $(".hdr").addClass('hdrTop');
        else
            $(".hdr").removeClass('hdrTop');
    }

$('.banner').unslider({
	speed: 1000,               //  The speed to animate each slide (in milliseconds)
	delay: 3000,              //  The delay between slide animations (in milliseconds)
	complete: function() {},  //  A function that gets called after every slide animation
	keys: true,               //  Enable keyboard (left, right) arrow shortcuts
	dots: true,               //  Display dot navigation
	fluid: false              //  Support responsive design. May break non-responsive designs
});

$('.social a').each(function(){
	$(this).mouseover( function() { $(this).animate({ marginTop : '-5px' }, 500, 'easeOutElastic', function () {  });  });
	$(this).mouseleave( function() { $(this).animate({ marginTop : '0px' }, 200, 'easeOutElastic', function () {  });  });
});
$('.social-prof-1,.social-prof-2').each(function(){
	$(this).mouseover( function() { $(this).animate({ marginTop : '38px' }, 500, 'easeOutElastic', function () {  });  });
	$(this).mouseleave( function() { $(this).animate({ marginTop : '42px' }, 200, 'easeOutElastic', function () {  });  });
});

$("#payment dt a").click(function(event) { event.preventDefault(); $("#payment dd ul").toggle(); });
$("#payment dd ul li a").click(function(event) 
{
	event.preventDefault();
	var text = $(this).html();	
	var id = ($(this).parent().index()+1);
	$("#payment dt a span").html(text);
	$("#payment dd ul").hide();
	//reloadCountry(getSelectedValue("id_metodo_pago"),;
	assignPayMethodValue(id);
	$("#" + id).find("dt a span.value").html();
});
$(document).bind('click', function(e)
{
	var $clicked = $(e.target);
	if (! $clicked.parents().hasClass("dropdown"))
	$("#payment dd ul").hide();
});

socialModal();
});//end document


/***********************************************************************************************************************************************/
/**************************************************** DEFAULT FUNCTIONS FOR SITE ***************************************************************/
/***********************************************************************************************************************************************/

var lat = '-34.606795';
var lng = '-58.378056';
function initialize() {
				var mapOptions = {
					mapTypeControl: false,
					scrollwheel: true,
					center: new google.maps.LatLng(lat, lng),
					zoom: 15,
					mapTypeId: google.maps.MapTypeId.ROADMAP/*,
					styles : [{featureType:'all',stylers:[{saturation:-100},{gamma:0.50}]}]*/
				};
				  var map = new google.maps.Map(document.getElementById("locationMap"),
					mapOptions);
					
				  //var image = Cfg.CFG_FOL_IMG+"front/images/ui/ico.png";
				  var image = Cfg.CFG_FOL_IMG+'front/images/map_marker.png';
				  var myLatLng = new google.maps.LatLng(lat, lng);
				  var marker = new google.maps.Marker({
					  position: myLatLng,
					  title:"Frentes Integrales",
					  map: map,
					  icon: image
				  });
				  marker.setMap(map);
}

function socialModal(w,h)
{
	$('#twitterBtn-link,#facebookBtn-link,#googleBtn-link').click(function(event) {
	event.preventDefault();
	var width  = w ? 575 : w,
		height = h ? 400 : h,
		left   = ($(window).width()  - width)  / 2,
		top    = ($(window).height() - height) / 2,
		url    = this.href,
		opts   = 'status=1' +
				 ',width='  + width  +
				 ',height=' + height +
				 ',top='    + top    +
				 ',left='   + left;

	window.open(url, 'twitter', opts);

	
	/*$.fancybox.open({
	href : this.href,
	type : 'iframe',
	padding : 5
	});*/

	return false;
	});
}

function fancyAlert(msg) 
{
    jQuery.fancybox({
    'modal' : true,
    'content' : "<div style=\"margin:1px;width:240px;\">"+msg+"<div style=\"text-align:center;margin-top:10px;\"><input style=\"margin:3px;padding:5px;width:100px;\" type=\"button\" onclick=\"jQuery.fancybox.close();\" value=\"Ok\"></div></div>"
    });
}
     
function fancyConfirm(msg,callback) 
{
    var ret;
    jQuery.fancybox({
    modal : true,
    content : "<div style=\"margin:1px;width:240px;\">"+msg+"<div style=\"text-align:right;margin-top:10px;\"><input id=\"fancyConfirm_cancel\" style=\"margin:3px;padding:0px;\" type=\"button\" value=\"Cancel\"><input id=\"fancyConfirm_ok\" style=\"margin:3px;padding:0px;\" type=\"button\" value=\"Ok\"></div></div>",
    onComplete : function() {
    jQuery("#fancyConfirm_cancel").click(function() {
    ret = false;
    jQuery.fancybox.close();
    })
    jQuery("#fancyConfirm_ok").click(function() {
    ret = true;
    jQuery.fancybox.close();
    })
    },
    onClosed : function() {
    callback.call(this,ret);
    }
    });
    }
     
    function fancyConfirm_text() {
    fancyConfirm("Ceci est un test", function(ret) {
    alert(ret)
    })
}

/*
 * INITIALIZE JARVIS WIDGETS
 */

// Setup Desktop Widgets
function setup_widgets_desktop() {

	if ($.fn.jarvisWidgets && $.enableJarvisWidgets) {

		$('#widget-grid').jarvisWidgets({

			grid : 'article',
			widgets : '.jarviswidget',
			localStorage : true,
			deleteSettingsKey : '#deletesettingskey-options',
			settingsKeyLabel : 'Reset settings?',
			deletePositionKey : '#deletepositionkey-options',
			positionKeyLabel : 'Reset position?',
			sortable : true,
			buttonsHidden : false,
			// toggle button
			toggleButton : true,
			toggleClass : 'fa fa-minus | fa fa-plus',
			toggleSpeed : 200,
			onToggle : function() {
			},
			// delete btn
			deleteButton : true,
			deleteClass : 'fa fa-times',
			deleteSpeed : 200,
			onDelete : function() {
			},
			// edit btn
			editButton : true,
			editPlaceholder : '.jarviswidget-editbox',
			editClass : 'fa fa-cog | fa fa-save',
			editSpeed : 200,
			onEdit : function() {
			},
			// color button
			colorButton : true,
			// full screen
			fullscreenButton : true,
			fullscreenClass : 'fa fa-resize-full | fa fa-resize-small',
			fullscreenDiff : 3,
			onFullscreen : function() {
			},
			// custom btn
			customButton : false,
			customClass : 'folder-10 | next-10',
			customStart : function() {
				alert('Hello you, this is a custom button...')
			},
			customEnd : function() {
				alert('bye, till next time...')
			},
			// order
			buttonOrder : '%refresh% %custom% %edit% %toggle% %fullscreen% %delete%',
			opacity : 1.0,
			dragHandle : '> header',
			placeholderClass : 'jarviswidget-placeholder',
			indicator : true,
			indicatorTime : 600,
			ajax : true,
			timestampPlaceholder : '.jarviswidget-timestamp',
			timestampFormat : 'Last update: %m%/%d%/%y% %h%:%i%:%s%',
			refreshButton : true,
			refreshButtonClass : 'fa fa-refresh',
			labelError : 'Sorry but there was a error:',
			labelUpdated : 'Last Update:',
			labelRefresh : 'Refresh',
			labelDelete : 'Delete widget:',
			afterLoad : function() {
			},
			rtl : false, // best not to toggle this!
			onChange : function() {
				
			},
			onSave : function() {
				
			},
			//ajaxnav : $.navAsAjax // declears how the localstorage should be saved // comentado por tango para que no cambie el titulo de la tabla

		});

	}

}

// Setup Desktop Widgets
function setup_widgets_mobile() {

	if ($.enableMobileWidgets && $.enableJarvisWidgets) {
		setup_widgets_desktop();
	}

}

/* ~ END: INITIALIZE JARVIS WIDGETS */



/***********************************************************************************************************************************************/
/**************************************************** DEFAULT FUNCTIONS FOR SITE ***************************************************************/
/***********************************************************************************************************************************************/



/***********************************************************************************************************************************************/
/**************************************************** CUSTOM FUNCTIONS FOR SITE ***************************************************************/
/***********************************************************************************************************************************************/

function suscribe()
{
	if(!validaEmail($("#novedades").val()))
		fancyAlert('Por favor complete su Email');
	else
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_MOD+"sendQuickForm.php",
			data: "email="+$("#novedades").val(),
			async: false,
			success: function(data) {
				$("#novedades").val('');
				}
			});
}

function inscribe()
{
	var $h = $("#cursoIns").height()*1;
	if($h == 0)
	{
		$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"validateSession.php",
				data: "a=vfhsthns5sh5j447jbdalpus5hs5shnaerTa94gUUna04ga0ga523ddk8904gn0a4nhbjm7323dfhlop34ga04ng0a4jszqwe470k2hj8e3kl9d2",
				async: true,
				success: function(data) {
					if(data == 0)
					{
						$("#cursoIns").animate({ height: "330px" }, 500 );
						$('.curso-sch button').each(function(el){ 
							if($("#Iconsulta").val() == 1)
							{
								$("#but1").hide();
								$("#but2").animate({ width: "100%" }, 500 );
							}
							else
							{
								$("#but2").hide();
								$("#but1").animate({ width: "100%" }, 500 );
							}
						});
					}
					else if(data == 1)
					{
						inscribeToCourse($("#Icurso").val());
					}
					else{}

					}
			});
	}
	else
	{
		$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"validateInscripto.php",
				data: "curso="+$("#Icurso").val()+"&nombre="+$("#Inombre").val()+"&apellido="+$("#Iapellido").val()+"&email="+$("#Iemail").val()+"&comment="+$("#Icomment").val(),
				async: false,
				success: function(data) {
					$("#Icurso2").val(data);
					}
			});
		if(isEmpty($("#Inombre").val()))
			fancyAlert('Por favor complete su Nombre');
		else if(isEmpty($("#Iapellido").val()))
			fancyAlert('Por favor complete su Apellido');
		else if(!validaEmail($("#Iemail").val()))
			fancyAlert('Por favor complete su Email');
		else if($("#Icurso2").val() == -9 )
			modalLogin(1);
		else if($("#Icurso2").val() == -8 )
			modalLogin(2);
		else if($("#Icurso2").val() == -7 )
			courseInsc(2);
		else
			$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_MOD+"sendInscribe.php",
				data: "curso="+$("#Icurso").val()+"&nombre="+$("#Inombre").val()+"&apellido="+$("#Iapellido").val()+"&email="+$("#Iemail").val()+"&comment="+$("#Icomment").val()+"&consulta="+$("#Iconsulta").val(),
				async: false,
				success: function(data) {
					if($("#Iconsulta").val() == 1)
					{
						courseInsc(3);
						$("#but2").animate({ width: "45%" }, 500 );
						$("#but1").show();
					}
					else
					{
						courseInsc(1);
						$("#but1").animate({ width: "45%" }, 500 );
						$("#but2").show();
					}
					$("#Iconsulta").val("");
					}
			});
	}
}

function consulta()
{
	$("#Iconsulta").val("1");	
	inscribe();
}

function courseInsc(n)
{
	switch(n)
	{
		case 1:
			$(".curso-sch button").off("click");
			//$("#cursoInsSent").html('Los datos sen han guardado con éxito. Por favor verifique su casilla de Email ('+$("#Iemail").val()+') para validar los datos de inscripción.');
			fancyAlert('Los datos se han guardado con éxito. Por favor verifique su casilla de Email ('+$("#Iemail").val()+') para validar los datos de inscripción.');
			$("#cursoIns").animate({ height: "0px" }, 100 );
			$("#cursoInsSent").animate({ height: "100px" }, 500 );
		break;
		case 2:
			$(".curso-sch button").off("click");	
			//$("#cursoInsSent").html('Ya se encuentra suscripto. Por favor verifique su casilla de Email ('+$("#Iemail").val()+') para validar los datos de inscripción.');
			fancyAlert('Ya se encuentra suscripto. Por favor verifique su casilla de Email ('+$("#Iemail").val()+') para validar los datos de inscripción.');
			$("#cursoIns").animate({ height: "0px" }, 100 );
			$("#cursoInsSent").animate({ height: "100px" }, 500 );
		break;
		case 3:
			$(".curso-sch button").off("click");
			//$("#cursoInsSent").html('Su consulta fue enviada con éxito. Por favor verifique su casilla de Email ('+$("#Iemail").val()+') para validar los datos de inscripción.');
			fancyAlert('Su consulta fue enviada con éxito. Por favor verifique su casilla de Email ('+$("#Iemail").val()+') para validar los datos de inscripción.');
			$("#cursoIns").animate({ height: "0px" }, 100 );
			$("#cursoInsSent").animate({ height: "100px" }, 500 );
		break;
	}
	
}

function modalLogin(n)
{
	
	$.fancybox.open({
		href : Cfg._ROOT+'login/inscribe/'+$("#Icurso").val()+'/',
		type : 'iframe',
		height : 600,  
		padding : 5
	});
}
function enterSite()
{
	$("#formLogin").submit();
	parent.parent.$.fancybox.close();
	//parent.parent.location.reload(); 
}
function inscribeStep2()
{
	
	var error = false;
	$('.register form input').each(function(el){
		if(isEmpty($(this).val()) && $(this).attr('name') != 'id_metodos_pago')
		{
			$(this).addClass('error');
			error = true;
		}
		else if(!isDate($(this).val().replace("/","-").replace("/","-"),'dd-mm-yy') && $(this).attr('name') == 'fecha_nacimiento')
		{
			$(this).addClass('error');
			error = true;
		}
		else if(!validaEmail($(this).val()) && $(this).attr('name') == 'email')
		{
			$(this).addClass('error');
			error = true;
		}
		else 
		{
			$(this).removeClass('error');
			$("#payment").removeClass('error-class');
		}
		if(isEmpty($("#Iid_metodos_pago").val()))
		{
			$("#payment").addClass('error-class');
			error = true;

		}
	});
	if(!error)
	{
		$(".register form button").off("click");	
		var $vals = 'a=1';
		$('.register form input').each(function(el){$vals += '&'+this.name+'='+this.value;});
			$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_MOD+"registerAlumno.php",
			data: $vals,
			async: false,
			success: function(data) {
				//$('.register form input').each(function(el){$(this).val("");});
				jQuery('html, body').animate({ scrollTop:0 }, '800');
				//fancyAlert('Se han registrado sus datos.');
				location.reload(); 
				}
			});
	}
	else
	{
		jQuery('html, body').animate({ scrollTop:0 }, '800');
		fancyAlert('Por favor revise los campos marcados.');
	}
	
}

function assignPayMethodValue(id)
{
	$("#Iid_metodos_pago").val(id);
}

function login()
{
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_LOAD+"loginAlumno.php",
			data: $vals,
			async: false,
			success: function(data) {
				$("#dialogPost").html(data);
				
				}
			});
}

function doModalLogin()
{
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_LOAD+"loginAlumno.php",
			data: "user="+$("#Iuser").val()+"&pass="+$("#Ipass").val()+"&id_cursos="+$("#Iid_cursos").val(),
			async: false,
			success: function(data) {
				$("#dialogPost").html(data);
				$.fancybox.close();
				location.reload(); 
				}
			});
}

function editAlumno()
{
	var error = false;
	$('#formEdit_edit input').each(function(el){
		if(isEmpty($(this).val()) && $(this).attr('name') != 'id_metodo_pago' && $(this).attr('name') != 'pass' && $(this).attr('name') != 'pass2' && $(this).attr('name') != 'linkedin' && $(this).attr('name') != 'twitter')
		{
			$(this).closest( "label" ).addClass('state-error');
			error = true;
		}
		else if(!isDate($(this).val(),'dd-mm-yy') && $(this).attr('name') == 'fecha_nacimiento')
		{
			$(this).closest( "label" ).addClass('state-error');
			error = true;
		}
		else if(!validaEmail($(this).val()) && $(this).attr('name') == 'email')
		{
			$(this).closest( "label" ).addClass('state-error');
			error = true;
		} 
		else if($("#Ipass").val() != $("#Ipass2").val())
		{
			$("#Ipass").closest( "label" ).addClass('state-error');
			$("#Ipass2").closest( "label" ).addClass('state-error');
			addValidationError('pass','Las contraseñas deben coincidir.');
			addValidationError('pass2','Las contraseñas deben coincidir.');
			error = true;
		}
		else 
		{
			$("#fn_"+$(this).attr('name')).remove('em');
			$(this).closest( "label" ).removeClass('state-error');
			$("#payment").removeClass('error-class');

			
			$("#err_pass2").remove();
			$("#Ipass2").closest( "label" ).removeClass('state-error');

			$("#err_pass").remove();
			$("#Ipass2").closest( "label" ).removeClass('state-error');
			$("#Ipass").closest( "label" ).removeClass('state-error');

		}


		if(isEmpty($("#Iid_metodos_pago").val()))
		{
			$("#payment").addClass('error-class');
			error = true;

		}
	});
	if(!error)
	{
		formEdit_edit.submit();
		changesApplied('DatosAlumno');
	}
	else
	{
		fancyAlert('Por favor revise los campos marcados.');
	}

}

function addValidationError(obj,txt)
{
	if(!$("#err_"+obj).length)
		$("#fn_"+obj).append('<em for="year" class="invalid" id="err_'+obj+'">'+txt+'</em>');
}

function changesApplied(m) 
{
	var t = '<div style="height: 0px;display:none;" id="alertForm" class="alert alert-block alert-success"><a class="close" data-dismiss="alert" href="#">×</a>';
	switch(m)
	{
		case 'DatosAlumno':
		 t+= '<h4 class="alert-heading"><i class="fa fa-check-square-o"></i> Cambios aplicados!</h4><p>Los cambios que aplicó ya se encuentran en su perfil</p>';
		break;
	}
	t+= '</div>' 

	$("#sTab_perfil").prepend(t);
	$("#alertForm").show();
	$("#alertForm").animate({ height : '62px' }, 500, 'easeOutElastic', function () {  });

	$( "#alertForm" ).fadeOut( 3000, function() {  });
	$("#alertForm").animate({ height : '0px' }, 1000, 'easeOutElastic', function () { $("#alertForm").remove(); });
	

}

function validateSession()
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"validateSession.php",
				data: "a=vfhsthns5sh5j447jbdalpus5hs5shnaerTa94gUUna04ga0ga523ddk8904gn0a4nhbjm7323dfhlop34ga04ng0a4jszqwe470k2hj8e3kl9d2",
				async: true,
				success: function(data) {
					$("#dialogPost").val(data);
					}
			});
}

function InfoMsg(n,title,txt)
{
	switch(n)
	{
		case 1:
			var msg = '<div class="alert alert-success fade in" id="msgAlert1"><button data-dismiss="alert" class="close">×</button><i class="fa-fw fa fa-check"></i><strong>'+title+'</strong> '+txt+'</div>';
		break;
		case 2:
			var msg = '<div class="alert alert-danger fade in"><button data-dismiss="alert" class="close">×</button><i class="fa-fw fa fa-times"></i><strong>'+title+'</strong> '+txt+'</div>';
		break;
		case 3:
			var msg = '<div class="alert alert-info fade in"><button data-dismiss="alert" class="close">×</button><i class="fa-fw fa fa-info"></i><strong>'+title+'</strong> '+txt+'</div>';
		break;
	}
	return msg;
}

function cursoAdded(title)
{
	var msg = InfoMsg(1,'Perfecto!','Te has suscripto al curso <b>'+title+'</b>. Recordá que debés abonar el mismo antes de la fecha de cierre de inscripción.');
	$("#wid-id-0 div:eq(0)").prepend(msg);
}

function cursoDeleted(title,id)
{
	var msg = InfoMsg(2,'Desuscripción','Te has dado de baja del curso <b>'+title+'</b>. Si lo hiciste por error podes darte de alta nuevamente presionando <a href="javascript:void(0);" onclick="inscribeToCourse('+id+');">aquí</a>.');
	$("#wid-id-0 div:eq(0)").prepend(msg);
}

function deleteCurso(title,id)
{
	$.SmartMessageBox({
					title : $._LANG.warning+"!",
					content : "Está seguro que desea desuscribirse del curso<b style=\"font-size:16px;\"> "+title+"?</b>",
					buttons : '['+$._LANG.YES+']['+$._LANG.NO+']'
				}, function(ButtonPressed) {
					if (ButtonPressed == $._LANG.YES)
					{
						$.ajax({
						  type: "POST",
						  url: Cfg.CFG_FOL_MOD+"unsuscribeAlumno.php",
						  data: "curso="+id,
						  success: function(data) {
							cursoDeleted(title,id);
							$("#row_"+id).hide();
							var cantCursos = $(".nav-tabs > li > a .badge").html()*1;
							$(".nav-tabs > li > a .badge").html(cantCursos-1);
						  }
						});
		
						
					}
					if (ButtonPressed == $._LANG.NO) {}
		
				});
}

function inscribeToCourse(curso)
{
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_MOD+"inscribeAlumno.php",
			data: "curso="+curso,
			async: false,
			success: function(data) {
				window.location.href = Cfg.CFG_URL+'mis-cursos/?curso='+curso+'&inscribe=1';
			}
	});
}

function showConsultaCurso(id)
{	
	$("#remoteModal").modal({remote:Cfg._ROOT+"consultaCurso/?curso="+id});
}

function sendConsulta(id)
{
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_MOD+"sendConsulta.php",
			data: "curso="+id,
			async: false,
			success: function(data) {
				$('#remoteModal').modal('toggle');
				 InfoMsg(3,'Mensaje enviado!','Su consulta será respondida a la brevedad posible.');
			}
	});
	
}

function showPayCourse(id,method)
{
	$("#remoteModal").modal({remote:Cfg._ROOT+"pagarCurso/?curso="+id+"&method="+method});
}

function showCourseData(id)
{
}

function sendContact()
{
	if($("#nombre").val() == 'Su Nombre' || isEmpty($("#nombre").val()))
		$("#quickFormMsj").html('Error');
	else if(!validaEmail($("#email").val()))
		$("#quickFormMsj").html('Error');
	else if(isEmpty($("#Message").val()))
		$("#quickFormMsj").html('Error');
	else
	$.ajax({
				  type: "POST",
				  url: Cfg.CFG_FOL_LOAD+"sendQuickForm.php",
				  data: "nombre="+$("#nombre").val()+"&email="+$("#email").val()+"&Message="+$("#Message").val(),
				async: false,
				  success: function(data) {
					$("#quickFormMsj").html(data);
	$("#nombre").val('');
	$("#email").val('');
	$("#Message").val('');
				  }
				});
}
