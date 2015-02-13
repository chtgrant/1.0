
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
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">
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
									<span class="widget-icon"> <i class="fa fa-check"></i> </span>
									<h2>Nueva cotización </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body">
				
										<div class="row">
											<form id="wizard-1" novalidate="novalidate">
												<div id="bootstrap-wizard-1" class="col-sm-12">
													<div class="form-bootstrapWizard">
														<ul class="bootstrapWizard form-wizard">
															<li class="active" data-target="#step1">
																<a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Origen y Destino</span> </a>
															</li>
															<li data-target="#step2">
																<a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Carga</span> </a>
															</li>
															<li data-target="#step3">
																<a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Volumen</span> </a>
															</li>
															<li data-target="#step4">
																<a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title">Valor</span> </a>
															</li>
															<li data-target="#step5">
																<a href="#tab5" data-toggle="tab"> <span class="step">5</span> <span class="title">Finalizar</span> </a>
															</li>
														</ul>
														<div class="clearfix"></div>
													</div>
													<div class="tab-content">
														<div class="tab-pane active" id="tab1">
															<br>
															<h3><strong>Paso 1 </strong> - Origen y Destino</h3>
				
															<div class="row">
				
																<div class="col-sm-12">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-truck fa-lg fa-fw"></i></span>
																			{$combos.origen}
																		</div>
																		<span for="id_origen" class="help-block">Origen de la carga</span>
																	</div>
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-truck fa-lg fa-fw"></i></span>
																			{$combos.destino}
																		</div>
																		<span for="id_destino" class="help-block">Destino de la carga</span>
																	</div>
				
																</div>
				
															</div>
				
														</div>
														<div class="tab-pane" id="tab2">
															<br>
															<h3><strong>Paso 2</strong> - Tipo de carga</h3>
				
															<div class="row">
																<div class="col-sm-6">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-cube fa-lg fa-fw"></i></span>
																			<select class="form-control input-lg" name="carga_imo" id="carga_imo">
																				<option value="">Imo</option>
																				<option value="SI">SI</option>
																				<option value="NO">NO</option>
																			</select>
																		</div>
																		<span for="carga_imo" class="help-block">Carga IMO</span>
																	</div>
																</div>
																<div class="col-sm-6">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-cubes fa-lg fa-fw"></i></span>
																			<select class="form-control input-lg" name="apilable" id="apilable">
																				<option value="">Apilable</option>
																				<option value="SI">SI</option>
																				<option value="NO">NO</option>
																			</select>
																		</div>
																		<span for="apilable" class="help-block">Si es carga aplilable</span>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-6" id="filePlacer"></div>
															</div>
														</div>
														<div class="tab-pane" id="tab3">
															<br>
															<h3><strong>Paso 3</strong> - Volumen</h3>
															<div class="row" id="tipo_volumen">
				

															</div>
															
														</div>
														<div class="tab-pane" id="tab4">
															<br>
															<h3><strong>Paso 4</strong> - Valor de la mercadería</h3>
															<br>
															<div class="row">
				
																<div class="col-sm-12">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-money fa-lg fa-fw"></i></span>
																			{$combos.moneda}
																		</div>
																		<span for="valor_mercaderia" class="help-block">Indicar la moneda del valor de la mercadería</span>
																	</div>
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-usd fa-lg fa-fw"></i></span>
																		<input class="form-control input-lg" placeholder="Valor" type="text" name="valor_mercaderia" id="valor_mercaderia">
																		</div>
																		<span for="valor_mercaderia" class="help-block">Indicar el valor de la mercadería</span>
																	</div>

																	<div class="form-group">
																			<div class="smart-form">
            																	<label class="textarea"> <i class="icon-append fa fa-comment"></i>
                																	<textarea rows="5" name="descripcion_embalaje_mercaderia" id="descripcion_embalaje_mercaderia" placeholder="Descripción de la merdadería y su embalaje"></textarea>
            																	</label>
																			</div>
																			<span for="valor_mercaderia" class="help-block">Indicar descripción de la merdadería y su embalaje</span>
																	</div>
				
																</div>
				
															</div>
															<br>
															<br>
														</div>
														<div class="tab-pane" id="tab5">
															<br>
															<h3><strong>Paso 5</strong> - Valor de la mercadería</h3>
															<br>
															<h1 class="text-center text-success"><strong><i class="fa fa-check fa-lg"></i>Finalizado</strong></h1>
															<h4 class="text-center">Valor de la cotización:</h4>
															<div id="valor_cotizacion" style="width:50%;text-align:center;font-size:16px;margin:20px auto;">
																
															</div>
															<br>
															<br>
														</div>
				
														<div class="form-actions">
															<div class="row">
																<div class="col-sm-12">
																	<ul class="pager wizard no-margin">
																		<!--<li class="previous first disabled">
																		<a href="javascript:void(0);" class="btn btn-lg btn-default"> First </a>
																		</li>-->
																		<li class="previous disabled">
																			<a href="javascript:void(0);" class="btn btn-lg btn-default prevBtn"> Anterior </a>
																		</li>
																		<!--<li class="next last">
																		<a href="javascript:void(0);" class="btn btn-lg btn-primary"> Last </a>
																		</li>-->
																		<li class="next">
																			<a href="javascript:void(0);" class="btn btn-lg txt-color-darken nextBtn"> Siguiente </a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
				
													</div>
												</div>
											</form>
										</div>
				
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