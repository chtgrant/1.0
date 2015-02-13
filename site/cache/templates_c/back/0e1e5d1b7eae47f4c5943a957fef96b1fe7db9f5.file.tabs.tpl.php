<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 12:44:47
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/tabs.tpl" */ ?>
<?php /*%%SmartyHeaderCode:109449760954d2143f3ba362-84932557%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0e1e5d1b7eae47f4c5943a957fef96b1fe7db9f5' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/tabs.tpl',
      1 => 1422987037,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '109449760954d2143f3ba362-84932557',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'sectionAttr' => 0,
    'return' => 0,
    'chgCurrent' => 0,
    'tabs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2143f422f85_04638356',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2143f422f85_04638356')) {function content_54d2143f422f85_04638356($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['sectionAttr']->value['title']!=''&&$_smarty_tpl->tpl_vars['return']->value['return']=='') {?>
<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa-fw fa <?php if ($_smarty_tpl->tpl_vars['sectionAttr']->value['icon']=='') {?>fa-home<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['icon'];?>
<?php }?>"></i> <?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['title'];?>
 <span>&gt; <?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['subTitle'];?>
</span>
		</h1>
	</div>
	<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8"></div>
</div>
<?php }?>
<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>
<?php echo $_smarty_tpl->tpl_vars['chgCurrent']->value;?>

<section class="" id="widget-grid">
<div class="widget-body">
<?php echo $_smarty_tpl->tpl_vars['tabs']->value;?>

</div>
</section>
<?php }} ?>
