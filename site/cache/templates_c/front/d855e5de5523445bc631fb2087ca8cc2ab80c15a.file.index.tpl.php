<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:51:06
         compiled from "/home/enlatam/public_html/newsite/site/template/front/tpl/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7917490054d19acb679cc7-41198174%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd855e5de5523445bc631fb2087ca8cc2ab80c15a' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/front/tpl/index.tpl',
      1 => 1423025463,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7917490054d19acb679cc7-41198174',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d19acb6cd784_18613816',
  'variables' => 
  array (
    'init' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d19acb6cd784_18613816')) {function content_54d19acb6cd784_18613816($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en-us">
<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<body<?php echo $_smarty_tpl->tpl_vars['init']->value;?>
>
    <?php echo $_smarty_tpl->getSubTemplate ("top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    <?php echo $_smarty_tpl->getSubTemplate ("body.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("trackgoogle.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</body>
</html><?php }} ?>
