		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="{$CFG_FOL_FWK_JS}plugin/pace/pace.min.js"></script>


		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="{$CFG_FOL_FWK_JS}plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="{$CFG_FOL_FWK_JS}bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="{$CFG_FOL_FWK_JS}notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="{$CFG_FOL_FWK_JS}smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="{$CFG_FOL_FWK_JS}plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="{$CFG_FOL_FWK_JS}plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="{$CFG_FOL_FWK_JS}plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="{$CFG_FOL_FWK_JS}plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="{$CFG_FOL_FWK_JS}plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="{$CFG_FOL_FWK_JS}plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="{$CFG_FOL_FWK_JS}plugin/fastclick/fastclick.js"></script>

		<!--[if IE 7]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- MAIN APP JS FILE -->
		<script src="{$CFG_FOL_FWK_JS}app.js"></script>
		
		<!-- PAGE RELATED PLUGIN(S) -->
		
		<!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
		<script src="{$CFG_FOL_FWK_JS}plugin/flot/jquery.flot.cust.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/flot/jquery.flot.resize.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/flot/jquery.flot.fillbetween.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/flot/jquery.flot.orderBar.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/flot/jquery.flot.pie.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/flot/jquery.flot.tooltip.js"></script>
		
		<!-- Vector Maps Plugin: Vectormap engine, Vectormap language -->
		<script src="{$CFG_FOL_FWK_JS}plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>
		
		<!-- Full Calendar -->
		<script src="{$CFG_FOL_FWK_JS}plugin/fullcalendar/jquery.fullcalendar.min.js"></script>

		
{literal}
		<script>
		
			$(document).ready(function() 
			{
				pageSetUp();

				if($('#dt_basic-880').length>0)
					$('#dt_basic-880').dataTable({
						"sPaginationType" : "bootstrap_full",
						"sDom" : "<'dt-top-row'Tlf>r<'dt-wrapper't><'dt-row dt-bottom-row'<'row'<'col-sm-6'i><'col-sm-6 text-right'p>>",
						"oTableTools" : { 
							"aButtons" : ["copy", "print", {"sExtends" : "collection","sButtonText" : 'Save <span class="caret" />',"aButtons" : ["csv", "xls", "pdf"]}],
							"sSwfPath" : Cfg.CFG_FOL_FWK_JS+"plugin/datatables/media/swf/copy_csv_xls_pdf.swf"
										},
						"fnInitComplete" : function(oSettings, json) {$(this).closest('#dt_table_tools_wrapper').find('.DTTT.btn-group').addClass('table_tools_group').children('a.btn').each(function() {$(this).addClass('btn-sm btn-default');});}
					});
				if($('#dt_basic-888').length>0)
					$('#dt_basic-888').dataTable({
						"sPaginationType" : "bootstrap_full",
						 "processing": true,
	        			 "serverSide": true,
					});


			});
			$(document.body).on('hidden.bs.modal', function () {
		    	$('#remoteModal').removeData('bs.modal')
			});
			$(function() {
			    $(".modal-link").click(function(event) {
			        event.preventDefault()
			        //$('#remoteModal').removeData("modal-dialog")
			        $(this).removeData('modal');
			        $('#remoteModal').modal({remote: $(this).attr("href")})
			    })
			})

		</script>
		
{/literal}