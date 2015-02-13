{$strStyles}
<!-- MAIN PANEL -->
		<div id="main" role="main">
			{if $return.return == ""}
			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> {$_LANG.body.dashboard.refresh}" data-html="true">
				<i class="fa fa-refresh"></i></span> </span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>{$_LANG.sections.home}</li><li>{$_LANG.sections.dashboard}</li>
				</ol>
				<!-- end breadcrumb -->
			</div>
			<!-- END RIBBON -->
			{/if}

			<!-- MAIN CONTENT -->
			<div id="content">
				{$content}
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN PANEL -->
{$js}
