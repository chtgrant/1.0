<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:55
         compiled from "/home/enlatam/public_html/site/template/back/tpl/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25022228254d2e33b65e2a9-33869862%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cccc86876518819c9a271b4cd4ad624695bdf10b' => 
    array (
      0 => '/home/enlatam/public_html/site/template/back/tpl/index.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25022228254d2e33b65e2a9-33869862',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'DebugWindow' => 0,
    'NOSCRIPT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2e33b67d291_42256987',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33b67d291_42256987')) {function content_54d2e33b67d291_42256987($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en-us">
<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body class="">
<?php echo $_smarty_tpl->tpl_vars['DebugWindow']->value;?>

<?php echo $_smarty_tpl->tpl_vars['NOSCRIPT']->value;?>

    <?php echo $_smarty_tpl->getSubTemplate ("top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    <?php echo $_smarty_tpl->getSubTemplate ("left.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    <?php echo $_smarty_tpl->getSubTemplate ("body.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("trackgoogle.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</body>
</html><?php }} ?>
