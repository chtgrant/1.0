<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 12:39:23
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:54639246254d212fb13b7c7-03211129%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4decc8a23c9c143bf593ed31f835ecff475ec91c' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/list.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '54639246254d212fb13b7c7-03211129',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'sectionAttr' => 0,
    'dataDisplay' => 0,
    'filterActive' => 0,
    'html' => 0,
    'CFG_FOL_FWK_JS' => 0,
    'secAttr' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d212fb1c97e4_91381477',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d212fb1c97e4_91381477')) {function content_54d212fb1c97e4_91381477($_smarty_tpl) {?><div class="row">
	<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa-fw fa <?php if ($_smarty_tpl->tpl_vars['sectionAttr']->value['icon']=='') {?>fa-home<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['icon'];?>
<?php }?>"></i> <?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['title'];?>
 <span>&gt; <?php echo $_smarty_tpl->tpl_vars['sectionAttr']->value['subTitle'];?>
</span>
		</h1>
	</div>
	<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8"></div>
</div>
<iframe style="width:0px;height:0;display:none;" name="postEdit" id="postEdit"></iframe>

<?php if (isset($_smarty_tpl->tpl_vars['dataDisplay']->value['filters'])) {?>
<div class="panel-group smart-accordion-default" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
			<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
			<i class="fa fa-lg fa-angle-down pull-right"></i>
			<i class="fa fa-lg fa-angle-up pull-right"></i>Buscar/Filtro</a></h4>
		</div>
		<div id="collapseOne" class="<?php if ($_smarty_tpl->tpl_vars['filterActive']->value==true) {?>panel-collapse collapse in<?php } else { ?>panel-collapse collapse<?php }?>">
			<div class="panel-body no-padding"><?php echo $_smarty_tpl->tpl_vars['dataDisplay']->value['filters'];?>
</div>
		</div>
	</div>
</div>
<?php }?>

<div id="listCont">
<?php echo $_smarty_tpl->tpl_vars['dataDisplay']->value['navigation'];?>


<div id="contPostZone"></div>
<div class="tablebg" style="min-height:100px;">
<?php echo $_smarty_tpl->tpl_vars['dataDisplay']->value['dataTable'];?>

</div>
<?php echo $_smarty_tpl->tpl_vars['html']->value['wSelection'];?>

<?php echo $_smarty_tpl->tpl_vars['dataDisplay']->value['paging']['links'];?>

</div>

</div>

<!-- PAGE RELATED PLUGIN(S) -->
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/jquery.dataTables-cust.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/ColReorder.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/FixedColumns.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/ColVis.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/ZeroClipboard.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/media/js/TableTools.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/datatables/DT_bootstrap.js"></script>

<script>
<?php echo $_smarty_tpl->tpl_vars['secAttr']->value['js']['list'];?>

</script><?php }} ?>
