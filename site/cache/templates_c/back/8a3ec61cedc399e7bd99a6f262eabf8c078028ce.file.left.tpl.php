<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:58:07
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/left.tpl" */ ?>
<?php /*%%SmartyHeaderCode:63884980254d1a6dfbd2456-11637568%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8a3ec61cedc399e7bd99a6f262eabf8c078028ce' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/left.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '63884980254d1a6dfbd2456-11637568',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_IMG' => 0,
    '_SESSION' => 0,
    'cmsNav' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a6dfbee2a5_38454840',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6dfbee2a5_38454840')) {function content_54d1a6dfbee2a5_38454840($_smarty_tpl) {?><!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
		<aside id="left-panel">

			<!-- User info -->
			<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as it --> 
					
					<a href="javascript:void(0);" id="show-shortcut">
						<img src="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
avatars/<?php if ($_smarty_tpl->tpl_vars['_SESSION']->value['userF']['sex']=='F') {?>female<?php } else { ?>male<?php }?>.png" alt="me" class="online" /> 
						<span>
							<?php echo $_smarty_tpl->tpl_vars['_SESSION']->value['userF']['name'];?>
 <?php echo $_smarty_tpl->tpl_vars['_SESSION']->value['userF']['lastname'];?>

						</span>
						<i class="fa fa-angle-down"></i>
					</a> 
					
				</span>
			</div>
			<!-- end user info -->
			<nav>
				<ul>
				<?php echo $_smarty_tpl->tpl_vars['cmsNav']->value;?>

				</ul>
			</nav>
			<span class="minifyme"> <i class="fa fa-arrow-circle-left hit"></i> </span>

		</aside>
		<!-- END NAVIGATION --><?php }} ?>
