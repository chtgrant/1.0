<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:58:07
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/dashboard.tpl" */ ?>
<?php /*%%SmartyHeaderCode:174518790254d1a6dfafe899-23130333%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '13c3e35b0f19556a9fe7b757ce72c4bfdff1c51e' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/dashboard.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '174518790254d1a6dfafe899-23130333',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'sectionAttr' => 0,
    'CFG_FOL_FWK_JS' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a6dfb5e063_90798093',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6dfb5e063_90798093')) {function content_54d1a6dfb5e063_90798093($_smarty_tpl) {?><div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4"><h1 class="page-title txt-color-blueDark"><i class="fa-fw fa fa-home"></i> <?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['title'];?>
 <span>> <?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['subTitle'];?>
</span></h1></div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<!-- ul id="sparks" class="">
							<li class="sparks-info">
								<h5> My Income <span class="txt-color-blue">$47,171</span></h5>
								<div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
									1300, 1877, 2500, 2577, 2000, 2100, 3000, 2700, 3631, 2471, 2700, 3631, 2471
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Traffic <span class="txt-color-purple"><i class="fa fa-arrow-circle-up"></i>&nbsp;45%</span></h5>
								<div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
									110,150,300,130,400,240,220,310,220,300, 270, 210
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Orders <span class="txt-color-greenDark"><i class="fa fa-shopping-cart"></i>&nbsp;2447</span></h5>
								<div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
									110,150,300,130,400,240,220,310,220,300, 270, 210
								</div>
							</li>
						</ul -->
					</div>

</div>

				
				<!-- PAGE RELATED PLUGIN(S) -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/jquery.dataTables-cust.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/ColReorder.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/FixedColumns.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/ColVis.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/ZeroClipboard.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/media/js/TableTools.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/DT_bootstrap.js"></script>
			
<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
			
			/*
			 * BASIC
			 */
			$('#dt_basic').dataTable({
				"sPaginationType" : "bootstrap_full"
			});
	
			/* END BASIC */
	
			/* Add the events etc before DataTables hides a column */
			$("#datatable_fixed_column thead input").keyup(function() {
				oTable.fnFilter(this.value, oTable.oApi._fnVisibleToColumnIndex(oTable.fnSettings(), $("thead input").index(this)));
			});
	
			$("#datatable_fixed_column thead input").each(function(i) {
				this.initVal = this.value;
			});
			$("#datatable_fixed_column thead input").focus(function() {
				if (this.className == "search_init") {
					this.className = "";
					this.value = "";
				}
			});
			$("#datatable_fixed_column thead input").blur(function(i) {
				if (this.value == "") {
					this.className = "search_init";
					this.value = this.initVal;
				}
			});		
			
	
			var oTable = $('#datatable_fixed_column').dataTable({
				"sDom" : "<'dt-top-row'><'dt-wrapper't><'dt-row dt-bottom-row'<'row'<'col-sm-6'i><'col-sm-6 text-right'p>>",
				//"sDom" : "t<'row dt-wrapper'<'col-sm-6'i><'dt-row dt-bottom-row'<'row'<'col-sm-6'i><'col-sm-6 text-right'>>",
				"oLanguage" : {
					"sSearch" : "Search all columns:"
				},
				"bSortCellsTop" : true
			});		
			
	
	
			
	
			/* TABLE TOOLS */
			$('#datatable_tabletools').dataTable({
				"sDom" : "<'dt-top-row'Tlf>r<'dt-wrapper't><'dt-row dt-bottom-row'<'row'<'col-sm-6'i><'col-sm-6 text-right'p>>",
				"oTableTools" : {
					"aButtons" : ["copy", "print", {
						"sExtends" : "collection",
						"sButtonText" : 'Save <span class="caret" />',
						"aButtons" : ["csv", "xls", "pdf"]
					}],
					"sSwfPath" : "<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/media/swf/copy_csv_xls_pdf.swf"
				},
				"aLengthMenu": [
            [5,25, 50, 100, 200, -1],
            [5,25, 50, 100, 200, "All"]
        ], 
        // Disable sorting on the first column
        "aoColumnDefs" : [ {
            'bSortable' : false,
            'aTargets' : [ 6 ]
        } ],
				"fnInitComplete" : function(oSettings, json) {
					$(this).closest('#dt_table_tools_wrapper').find('.DTTT.btn-group').addClass('table_tools_group').children('a.btn').each(function() {
						$(this).addClass('btn-sm btn-default');
					});
				}
			});
		
		/* END TABLE TOOLS */
		})

		</script>
			<?php }} ?>
