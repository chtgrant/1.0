{if $modules.mail.active == TRUE || $modules.calendar.active == TRUE || $modules.mail.active == TRUE || $modules.invoice.active == TRUE || $modules.gallery.active == TRUE || $modules.profile.active == TRUE}
<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
		<div id="shortcut">
			<ul>
				{if $modules.mail.active == TRUE}
				<li>
					<a href="#inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				{/if}
				{if $modules.calendar.active == TRUE}
				<li>
					<a href="#calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				{/if}
				{if $modules.mail.active == TRUE}
				<li>
					<a href="#gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				{/if}
				{if $modules.invoice.active == TRUE}
				<li>
					<a href="#invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				{/if}
				{if $modules.gallery.active == TRUE}
				<li>
					<a href="#gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				{/if}
				{if $modules.profile.active == TRUE}
				<li>
					<a href="javascript:void(0);" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
				{/if}
			</ul>
		</div>
		<!-- END SHORTCUT AREA -->
{/if}		
{include file="footerScript.tpl"}

<script>
{$jsActions}
</script>			

<div id="back-to-top"><a href="#" rel="tooltip" data-placement="top" data-original-title="Back to Top">Back to Top</a></div>
<div id="dialogPost" style="display:none;"></div>	
<div aria-hidden="true" aria-labelledby="remoteModalLabel" role="dialog" tabindex="-1" id="remoteModal" class="modal fade"><div class="modal-dialog"><div class="modal-content"></div></div></div>	