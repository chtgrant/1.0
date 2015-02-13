
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

<!-- widget grid -->
				<section id="widget-grid" class="">
				
					<!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
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
									<h2>Importar archivos </h2>
				
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
																<a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Estructura</span> </a>
															</li>
															<li data-target="#step2">
																<a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Datos</span> </a>
															</li>
															<li data-target="#step3">
																<a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Asociar</span> </a>
															</li>
															<li data-target="#step4">
																<a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Guardar</span> </a>
															</li>
														</ul>
														<div class="clearfix"></div>
													</div>
													<div class="tab-content">
														<div class="tab-pane active" id="tab1">
															<br>
															<h3><strong>Paso 1 </strong> - Estructura</h3>
				
															<div class="row">
				
																<div class="col-sm-12">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-database fa-lg fa-fw"></i></span>
																			{$combos.tablas}
																		</div>
																	</div>
				
																</div>
				
															</div>
				
															<div class="row">
																<div class="col-sm-6">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-calendar fa-lg fa-fw"></i></span>
																			<select class="form-control input-lg" name="dateFormat">
																				<option value="">Formato fecha</option>
																				<option value="d-m-Y">d-m-Y Ej: 31-01-2001</option>
																				<option value="m-d-Y">m-d-Y Ej: 01-31-2001</option>
																				<option value="Y-m-d">Y-m-d Ej: 2001-01-31</option>
																				<option value="Ymd">Ymd Ej: 20010131</option>
																				<option value="dmY">dmY Ej: 31012001</option>
																				<option value="mdY">dmY Ej: 01312001</option>
																			</select>
																		</div>
																	</div>
																</div>
																<div class="col-sm-6">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"><i class="fa fa-hand-o-right  fa-lg fa-fw"></i></span>
																			<input class="form-control input-lg" placeholder="Separador ej: , o ;" type="text" name="separador" id="separador">
				
																		</div>
																	</div>
																</div>
															</div>
				
														</div>
														<div class="tab-pane" id="tab2">
															<br>
															<h3><strong>Paso 2</strong> - Datos</h3>
				
															<div class="row">
														

																<div class="col-sm-12 form-group smart-form ">
																	<div class="input-group">
																	<span class="input-group-addon"><i class="fa fa-file fa-lg fa-fw"></i></span>
																	<label class="input input-file" for="file">
																	<div class="button btn-f">
																		<input type="file" name="file" id="archivo_file">Examinar</div>
																		<input type="text" class="form-control input-lg" readonly="" name="txtUpload" id="txtUpload_file" placeholder="Seleccionar el archivo a importar: .csv,.txt">
																		<input type="hidden" name="fileName" id="fileName_file" value="" />
																		<input type="hidden" name="file" id="file" value="" />
																		<input type="hidden" value="" id="file_original" name="file_original">
																	</label>
																	</div>
																	<script type="text/javascript">uploadDocument("{$html.md5}","*.csv;*.txt","file");</script>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-6" id="filePlacer"></div>
															</div>
														</div>
														<div class="tab-pane" id="tab3">
															<br>
															<h3><strong>Paso 3</strong> - Asociar las columnas a la tabla</h3>
															<div class="alert alert-info fade in">
																<button class="close" data-dismiss="alert">×</button>
																<i class="fa-fw fa fa-info"></i>
																<strong>Info!</strong> Habilite con el checkbox las columnas a importar y asocielas con la columna de la tabla.
															</div>
															<div class="form-group">
																<label>Si lo desea, puede deshabilitar las primeras líneas del archivo importado</label>
																<input class="form-control input-lg" placeholder="Another input box here..." type="text" name="etc" id="etc">
															</div>
														</div>
														<div class="tab-pane" id="tab4">
															<br>
															<h3><strong>Step 4</strong> - Save Form</h3>
															<br>
															<h1 class="text-center text-success"><strong><i class="fa fa-check fa-lg"></i> Complete</strong></h1>
															<h4 class="text-center">Click next to finish</h4>
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
																			<a href="javascript:void(0);" class="btn btn-lg btn-default"> Anterior </a>
																		</li>
																		<!--<li class="next last">
																		<a href="javascript:void(0);" class="btn btn-lg btn-primary"> Last </a>
																		</li>-->
																		<li class="next">
																			<a href="javascript:void(0);" class="btn btn-lg txt-color-darken"> Siguiente </a>
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
<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
	
			//Bootstrap Wizard Validations

			  var $validator = $("#wizard-1").validate({
			    
			    rules: {
			      table_name: {
			        required: true
			      },
			      dateFormat: {
			        required: true
			      },
			      separador: {
			        required: true
			      },
			      txtUpload: {
			        required: true
			      },
			      file :{
			        required: true,
			        extension: "txt|csv"
			      }
			    },
			    
			    messages: {
			      table_name: "Por favor seleccione la tabla para importar los datos.",
			      dateFormat: "Por favor seleccione el formato de fecha.",
			      txtUpload: "Ingrese el archivo.",
			      separador: "Ingrese el separador de datos.",
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
			  });
			  
			  $('#bootstrap-wizard-1').bootstrapWizard({
			    'tabClass': 'form-wizard',
			    'onNext': function (tab, navigation, index) {
			      var $valid = $("#wizard-1").valid();
			      
			      if (!$valid) 
			      {
			        $validator.focusInvalid();
			        return false;
			      } 
			      else 
			      {
			        $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass('complete');
			        $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step').html('<i class="fa fa-check"></i>');
			      }
			    },
			    'onTabShow' : function (tab, navigation, index) {if(index == 2)alert("ASD");}
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

		</script>
{/literal}