<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:58:07
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:57429931054d1a6dfb61996-06618652%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a8321b93f0e33b857cb33b6141883bc279b9c909' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/index.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '57429931054d1a6dfb61996-06618652',
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
  'unifunc' => 'content_54d1a6dfb7feb5_87384271',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6dfb7feb5_87384271')) {function content_54d1a6dfb7feb5_87384271($_smarty_tpl) {?><!DOCTYPE html>
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
