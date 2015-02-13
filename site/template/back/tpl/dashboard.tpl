<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4"><h1 class="page-title txt-color-blueDark"><i class="fa-fw fa fa-home"></i> {$sectionAttr.title} <span>> {$sectionAttr.subTitle}</span></h1></div>
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
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/jquery.dataTables-cust.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/ColReorder.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/FixedColumns.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/ColVis.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/ZeroClipboard.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/media/js/TableTools.min.js"></script>
		<script src="{$CFG_FOL_FWK_JS}plugin/datatables/DT_bootstrap.js"></script>
{literal}			
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
					"sSwfPath" : "{/literal}{$CFG_FOL_FWK_JS}{literal}plugin/datatables/media/swf/copy_csv_xls_pdf.swf"
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
{/literal}			