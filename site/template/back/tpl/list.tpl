<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa-fw fa {if $sectionAttr.icon == ""}fa-home{else}{$sectionAttr.icon}{/if}"></i> {$sectionAttr.title} <span>&gt; {$sectionAttr.subTitle}</span>
		</h1>
	</div>
	<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8"></div>
</div>
<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>

{if isset($dataDisplay.filters)}
<div class="panel-group smart-accordion-default" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
			<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
			<i class="fa fa-lg fa-angle-down pull-right"></i>
			<i class="fa fa-lg fa-angle-up pull-right"></i>Buscar/Filtro</a></h4>
		</div>
		<div id="collapseOne" class="{if $filterActive == TRUE}panel-collapse collapse in{else}panel-collapse collapse{/if}">
			<div class="panel-body no-padding">{$dataDisplay.filters}</div>
		</div>
	</div>
</div>
{/if}

<div id="listCont">
{$dataDisplay.navigation}

<div id="contPostZone"></div>
<div class="tablebg" style="min-height:100px;">
{$dataDisplay.dataTable}
</div>
{$html.wSelection}
{$dataDisplay.paging.links}
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

<script>
{$secAttr.js.list}
</script>