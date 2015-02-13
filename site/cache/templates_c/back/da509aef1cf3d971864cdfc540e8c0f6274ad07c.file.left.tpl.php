<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:55
         compiled from "/home/enlatam/public_html/site/template/back/tpl/left.tpl" */ ?>
<?php /*%%SmartyHeaderCode:99063975754d2e33b73d076-46066905%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'da509aef1cf3d971864cdfc540e8c0f6274ad07c' => 
    array (
      0 => '/home/enlatam/public_html/site/template/back/tpl/left.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99063975754d2e33b73d076-46066905',
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
  'unifunc' => 'content_54d2e33b75a501_96514871',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33b75a501_96514871')) {function content_54d2e33b75a501_96514871($_smarty_tpl) {?><!-- Left panel : Navigation area -->
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
