{if $sectionAttr.title != ''}
<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa-fw fa {if $sectionAttr.icon == ""}fa-home{else}{$sectionAttr.icon}{/if}"></i> {$sectionAttr.title} <span>&gt; {$sectionAttr.subTitle}</span>
		</h1>
	</div>
	<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8"></div>
</div>
{/if}
<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>
{literal}
<style>
.bootstrapWizard li
{
	width:20%;
}
</style>
{/literal}
<!-- widget grid -->
				<section id="widget-grid" class="">
				
					<!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<article class="col-sm-12 col-md-12 col-lg-8">
				
							<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget" id="wid-id-3" data-widget-editbutton="false" data-widget-custombutton="false">
				<!-- widget options:
					usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
					
					data-widget-colorbutton="false"	
					data-widget-editbutton="false"
					data-widget-togglebutton="false"
					data-widget-deletebutton="false"
					data-widget-fullscreenbutton="false"
					data-widget-custombutton="false"
					data-widget-collapsed="true" 
					data-widget-sortable="false"
					
				-->
				<header>
					<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
					<h2>Cotización </h2>				
					
				</header>

				<!-- widget div-->
				<div>

					<div id="alertCont" style="oveflow:hidden;height:0;"></div>
					
					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
						
					</div>
					<!-- end widget edit box -->
					
					<!-- widget content -->
					<div class="widget-body no-padding">
						
						<form id="order-form" class="smart-form" novalidate="novalidate">
							<header>
								Al solicitar esta cotización manual se lo contactará telefónicamente para verificar los datos ingresados.
							</header>

							<fieldset>

								<section>
									<label class="textarea"> <i class="icon-append fa fa-comment"></i> 										
										<textarea rows="5" name="cotizacion_manual" placeholder="Descripción de los elementos a cotizar"></textarea> 
									</label>
								</section>

								<section>
									<div class="input input-file">
										<span class="button">
											<input id="archivo_lista_empaque" type="file" name="lista_empaque" onchange="this.parentNode.nextSibling.value = this.value">Examinar</span>
											<input type="text" placeholder="Cargar lista de empaque" readonly="" name="txtUpload" id="txtUpload_lista_empaque">
											<input type="hidden" name="fileName" id="fileName_lista_empaque" value="" />
											<input type="hidden" name="lista_empaque" id="lista_empaque" value="" />
											<script type="text/javascript">uploadDocument("{$_V.md5}","*.jpg;*.pdf;*.xls;*.xlsx;*.doc;*.docx","lista_empaque");</script>
									</div>
								</section>
							</fieldset>
							<footer>
								<button type="button" class="btn btn-primary" onclick="cotizacionManual();">
									Enviar
								</button>
							</footer>
						</form>

					</div>
					<!-- end widget content -->
					
				</div>
				<!-- end widget div -->
				
			</div>
			<!-- end widget -->	
				
						</article>
						<!-- WIDGET END -->
				
					</div>
				
					<!-- end row -->
				
				</section>
				<!-- end widget grid -->

<!-- PAGE RELATED PLUGIN(S) -->
		<script src="{$CFG_FOL_FWK_JS}plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/fuelux/wizard/wizard.js"></script>
{literal}
<style>
#loader-gears
{
	margin-top:60px !important;
	color:#333 !important;	
	left:40% !important;
}
</style>
<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
	
			/*//Bootstrap Wizard Validations

			  var $validator = $("#wizard-1").validate({
			    
			    rules: {
			      id_origen: {
			        required: true,
			        min: 1
			      },
			      id_destino: {
			        required: true,
			        min: 1
			      },
			      carga_imo: {
			        required: true
			      },
			      apilable: {
			        required: true
			      }
			    },
			    
			    messages: {
			      id_origen: "Por favor seleccione el origen de la carga.",
			      id_destino: "Por favor seleccione el destino de la carga.",
			      imo: "Por favor seleccione IMO.",
			      apilable: "Por favor seleccione si es Apilable o NO.",
			    },
			    
			    highlight: function (element) {
			      $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			    },
			    unhighlight: function (element) {
			      $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			    },
			    errorElement: 'span',
			    errorClass: 'help-block',
			    errorPlacement: function (error, element) {
			      if (element.parent('.input-group').length) {
			        error.insertAfter(element.parent());
			      } else {
			        error.insertAfter(element);
			      }
			    }
			  });*/

			$.validTab = new Object();
			  
			  $('#bootstrap-wizard-1').bootstrapWizard({
			    'tabClass': 'form-wizard',
			    'allowJumpToSlide': false,
			    'startIndex': 2,
			    'onNext': function (tab, navigation, index) {
			    	

			      //var $valid = $("#wizard-1").valid();
			      var $valid = true;
			      
			      switch(index)
			      {
			      	case 1:
			      		$("#tab1").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			      		if($("#id_origen").val() == 0)
			  				$valid = wizardError("#id_origen");
			  			if($("#id_destino").val() == 0)
			  				$valid = wizardError("#id_destino");
			  			if($("#id_origen").val() == $("#id_destino").val())
			  			{
			  				$valid = wizardError("#id_destino");
			  				messageBox('error','ERROR','El destino no puede ser el mismo que el origen.',4000);
			  			}
			  			if($valid)
			  				$("#tab1").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			  		break;

			  		case 2:
			      		$("#tab2").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			      		if($("#carga_imo").val() == "")
			  				$valid = wizardError("#carga_imo");
			  			if($("#apilable").val() == 0)
			  				$valid = wizardError("#apilable");
			  			if($valid)
			  				$("#tab3").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			  		break;

			  		case 3:
			      		$("#tab3").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			      		if($("#apilable").val() == "SI")
			      		{
			      			if($("#m3").val() == "" || $("#m3").val() <= 0)
				  				$valid = wizardError("#m3");
				  			if($("#m3").val() > 60)
				  				$valid = markStepError("#m3",1);
				  			if($("#peso").val() == "" || $("#peso").val() <= 0)
				  				$valid = wizardError("#peso");
				  			if($("#peso").val() > 24000)
				  				$valid = markStepError("#peso",2);
				  			if($valid)
				  				$("#tab3").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			      		}
			      		else if($("#apilable").val() == "NO")
			      		{
			      			if($("#largo").val() == "" || $("#largo").val() <= 0)
				  				$valid = wizardError("#largo");
				  			if($("#ancho").val() == "" || $("#ancho").val() <= 0)
				  				$valid = wizardError("#ancho");
				  			if($("#alto").val() == "" || $("#alto").val() <= 0)
				  				$valid = wizardError("#alto");
				  			if($("#largo").val()*$("#ancho").val()*$("#alto").val() > 60)
				  				$valid = markStepError("#alto",3);
				  			if($("#peso").val() == "" || $("#peso").val() <= 0)
				  				$valid = wizardError("#peso");
				  			if($("#peso").val() > 24000)
				  				$valid = markStepError("#peso",2);
				  			if($valid)
				  				$("#tab3").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			      		}
			      		
			  		break;

			  		case 4:
			      		$("#tab4").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			      		if($("#valor_mercaderia").val() == "" || $("#valor_mercaderia").val() == 0)
			  				$valid = wizardError("#valor_mercaderia");
			  			if($("#id_monedas").val() == 0)
			  				$valid = wizardError("#id_monedas");
			  			if($valid)
			  				$("#tab4").find(':input').each(function(el){wizardOK("#"+$(this).attr("id"));$valid=true;});
			  		break;
			      }
			      
			      if (!$valid) 
			      {
			        //$validator.focusInvalid();
			        return false;
			      } 
			      else 
			      {
			        $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass('complete');
			        $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step').html('<i class="fa fa-check"></i>');
			      }
			    },
			    onTabClick: function(tab, navigation, index) {
                 	/*if($(".bootstrapWizard li:eq("+(index - 1)+")").hasClass("complete"))
                 		return true
                 	else
                 		return false;*/
                 	//console.log( tab );
                 	return false;
            	},
			    'onTabShow' : function (tab, navigation, index) {
			    	var total = navigation.find('li').length;
			    	var current = index + 1;

			    	if (current == 1)
                    	$('#bootstrap-wizard-1').find('.prevBtn').hide();
                	else
                    	$('#bootstrap-wizard-1').find('.prevBtn').show();

                	if (current >= total) 
                	{
                    	$('#bootstrap-wizard-1').find('.nextBtn').hide();
                    	$('#bootstrap-wizard-1').find('.submitBtn').show();
                	} 
                	else 
                	{
                    	$('#bootstrap-wizard-1').find('.nextBtn').show();
                    	$('#bootstrap-wizard-1').find('.submitBtn').hide();
                	}

			    	if(index == 2 && $("#apilable").val() != "" && (($("#apilable").val() == "NO" && !$("#largo").val() && !$("#ancho").val() && !$("#peso").val()) || 
			    		($("#apilable").val() == "SI" && !$("#m3").val() && !$("#peso").val())) )
			    	{
			    		var loader = pLoader('Actualizando...');
			    		$("#tipo_volumen").html(loader);
			    		$.ajax({
							type: "POST",
							url: Cfg.CFG_FOL_LOAD+"html.apilable.php",
							data: "apilable="+$("#apilable").val(),
							success: function(data) {
								$("#tipo_volumen").html(data)
							}
						});
			    	}
			    	if(index == 4 && $("#id_monedas").val() != 0 && $("#valor_mercaderia").val() != '')
			    	{
			    		var  $vals = '';
			    		var loader = pLoader('Cotizando...');
			    		$("#valor_cotizacion").html(loader);
			    		$('#wizard-1').find(':input').each(function(el){$vals += "&"+this.name+"="+this.value;});
			    		$.ajax({
							type: "POST",
							url: Cfg.CFG_FOL_MOD+"generar.cotizacion.auto.php",
							data: "a=a"+$vals,
							success: function(data) {
								$("#valor_cotizacion").html(data);
								var icon = getMoneyIcon($("#id_monedas").val());
								$("#valor_cotizacion").find('i').each(function () { $(this).removeClass('fa-usd').addClass(icon);});
							}
						});
			    	}
			    }
			  });
			  
		
			// fuelux wizard
			  var wizard = $('.wizard').wizard();
			  
			  wizard.on('finished', function (e, data) {
			    //$("#fuelux-wizard").submit();
			    //console.log("submitted!");
			    $.smallBox({
			      title: "Congratulations! Your form was submitted",
			      content: "<i class='fa fa-clock-o'></i> <i>1 seconds ago...</i>",
			      color: "#5F895F",
			      iconSmall: "fa fa-check bounce animated",
			      timeout: 4000
			    });
			    
			  });

		
		})
		$( "#valor_mercaderia" ).ForceNumericOnly();
		</script>
{/literal}