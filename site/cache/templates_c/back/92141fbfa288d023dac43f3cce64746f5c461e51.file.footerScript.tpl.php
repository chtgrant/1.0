<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:57:59
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/footerScript.tpl" */ ?>
<?php /*%%SmartyHeaderCode:150605659154d1a6d7261dc1-37880268%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '92141fbfa288d023dac43f3cce64746f5c461e51' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/footerScript.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '150605659154d1a6d7261dc1-37880268',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'CFG_FOL_FWK_JS' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a6d72abc94_07758451',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6d72abc94_07758451')) {function content_54d1a6d72abc94_07758451($_smarty_tpl) {?>		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/pace/pace.min.js"></script>


		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/fastclick/fastclick.js"></script>

		<!--[if IE 7]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- MAIN APP JS FILE -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
app.js"></script>
		
		<!-- PAGE RELATED PLUGIN(S) -->
		
		<!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/flot/jquery.flot.cust.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/flot/jquery.flot.resize.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/flot/jquery.flot.fillbetween.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/flot/jquery.flot.orderBar.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/flot/jquery.flot.pie.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/flot/jquery.flot.tooltip.js"></script>
		
		<!-- Vector Maps Plugin: Vectormap engine, Vectormap language -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>
		
		<!-- Full Calendar -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/fullcalendar/jquery.fullcalendar.min.js"></script>

		

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
		
<?php }} ?>
