<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:54
         compiled from "/home/enlatam/public_html/site/template/front/tpl/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:142149770954d2e33a67cde0-75656908%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dbdbede0347c5a7164f07f5d8a2de849c674751a' => 
    array (
      0 => '/home/enlatam/public_html/site/template/front/tpl/index.tpl',
      1 => 1423025463,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '142149770954d2e33a67cde0-75656908',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'init' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2e33a6d6f63_75631122',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33a6d6f63_75631122')) {function content_54d2e33a6d6f63_75631122($_smarty_tpl) {?><!DOCTYPE html>
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
