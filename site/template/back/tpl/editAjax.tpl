<div style="width:100px;margin:5px auto;">
	{if $secAttr.perms.insert == 1}<button type="button" class="btn btn-primary" onclick="{if $customForm == TRUE}showContentAnimated('addNew');{else}loadFormData('{$secAttr.sectionVar}',0,'{$key}');{/if}">Agregar</button>{/if}
</div>

<div id="addNew_{$secAttr.sectionVar}" style="overflow: hidden;height:0;">
{if $customForm == TRUE}
{include file="$incTpl"}
{else}
{$formEdit}
{/if}
</div>

<br />

<div id="contPostZone"></div>

<div id="listCont">
{$dataDisplay.navigation}

<div id="contPostZone"></div>
<div class="tablebg" style="min-height:100px;">
{$dataDisplay.dataTable}
</div>
{$html.wSelection}
{$dataDisplay.paging.links}
</div>
<script type="text/javascript">
pageSetUp();
</script>