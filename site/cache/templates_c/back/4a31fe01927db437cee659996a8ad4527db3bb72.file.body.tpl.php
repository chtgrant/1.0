<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:58:07
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/body.tpl" */ ?>
<?php /*%%SmartyHeaderCode:152902999454d1a6dfbf00f0-08854112%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4a31fe01927db437cee659996a8ad4527db3bb72' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/body.tpl',
      1 => 1422987035,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '152902999454d1a6dfbf00f0-08854112',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'strStyles' => 0,
    'return' => 0,
    '_LANG' => 0,
    'content' => 0,
    'js' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a6dfc12e48_66695058',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6dfc12e48_66695058')) {function content_54d1a6dfc12e48_66695058($_smarty_tpl) {?><?php echo $_smarty_tpl->tpl_vars['strStyles']->value;?>

<!-- MAIN PANEL -->
		<div id="main" role="main">
			<?php if ($_smarty_tpl->tpl_vars['return']->value['return']=='') {?>
			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> <?php echo $_smarty_tpl->tpl_vars['_LANG']->value['body']['dashboard']['refresh'];?>
" data-html="true">
				<i class="fa fa-refresh"></i></span> </span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['sections']['home'];?>
</li><li><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['sections']['dashboard'];?>
</li>
				</ol>
				<!-- end breadcrumb -->
			</div>
			<!-- END RIBBON -->
			<?php }?>

			<!-- MAIN CONTENT -->
			<div id="content">
				<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN PANEL -->
<?php echo $_smarty_tpl->tpl_vars['js']->value;?>

<?php }} ?>
