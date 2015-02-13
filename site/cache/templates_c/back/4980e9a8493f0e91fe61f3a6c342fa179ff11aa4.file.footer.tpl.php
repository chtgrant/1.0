<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:55
         compiled from "/home/enlatam/public_html/site/template/back/tpl/footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:128592835154d2e33b7dc850-22485496%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4980e9a8493f0e91fe61f3a6c342fa179ff11aa4' => 
    array (
      0 => '/home/enlatam/public_html/site/template/back/tpl/footer.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '128592835154d2e33b7dc850-22485496',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'modules' => 0,
    'jsActions' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2e33b83b572_02014750',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33b83b572_02014750')) {function content_54d2e33b83b572_02014750($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['modules']->value['mail']['active']==true||$_smarty_tpl->tpl_vars['modules']->value['calendar']['active']==true||$_smarty_tpl->tpl_vars['modules']->value['mail']['active']==true||$_smarty_tpl->tpl_vars['modules']->value['invoice']['active']==true||$_smarty_tpl->tpl_vars['modules']->value['gallery']['active']==true||$_smarty_tpl->tpl_vars['modules']->value['profile']['active']==true) {?>
<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
		<div id="shortcut">
			<ul>
				<?php if ($_smarty_tpl->tpl_vars['modules']->value['mail']['active']==true) {?>
				<li>
					<a href="#inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['modules']->value['calendar']['active']==true) {?>
				<li>
					<a href="#calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['modules']->value['mail']['active']==true) {?>
				<li>
					<a href="#gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['modules']->value['invoice']['active']==true) {?>
				<li>
					<a href="#invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['modules']->value['gallery']['active']==true) {?>
				<li>
					<a href="#gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['modules']->value['profile']['active']==true) {?>
				<li>
					<a href="javascript:void(0);" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
				<?php }?>
			</ul>
		</div>
		<!-- END SHORTCUT AREA -->
<?php }?>		
<?php echo $_smarty_tpl->getSubTemplate ("footerScript.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<script>
<?php echo $_smarty_tpl->tpl_vars['jsActions']->value;?>

</script>			

<div id="back-to-top"><a href="#" rel="tooltip" data-placement="top" data-original-title="Back to Top">Back to Top</a></div>
<div id="dialogPost" style="display:none;"></div>	
<div aria-hidden="true" aria-labelledby="remoteModalLabel" role="dialog" tabindex="-1" id="remoteModal" class="modal fade"><div class="modal-dialog"><div class="modal-content"></div></div></div>	<?php }} ?>
