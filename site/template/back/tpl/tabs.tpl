{if $sectionAttr.title != '' && $return.return == ''}
<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa-fw fa {if $sectionAttr.icon == ""}fa-home{else}{$sectionAttr.icon}{/if}"></i> {$sectionAttr.title} <span>&gt; {$sectionAttr.subTitle}</span>
		</h1>
	</div>
	<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8"></div>
</div>
{/if}
<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>
{$chgCurrent}
<section class="" id="widget-grid">
<div class="widget-body">
{$tabs}
</div>
</section>
