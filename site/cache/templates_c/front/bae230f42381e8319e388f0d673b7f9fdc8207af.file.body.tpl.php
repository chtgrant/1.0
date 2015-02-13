<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:51:06
         compiled from "/home/enlatam/public_html/newsite/site/template/front/tpl/body.tpl" */ ?>
<?php /*%%SmartyHeaderCode:110683340954d1a53aa28180-26834455%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bae230f42381e8319e388f0d673b7f9fdc8207af' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/front/tpl/body.tpl',
      1 => 1423025464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '110683340954d1a53aa28180-26834455',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'styleRedefine' => 0,
    'strStyles' => 0,
    'content' => 0,
    'js' => 0,
    'jsActions' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a53aa38aa0_35264199',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a53aa38aa0_35264199')) {function content_54d1a53aa38aa0_35264199($_smarty_tpl) {?><?php echo $_smarty_tpl->tpl_vars['styleRedefine']->value;?>

<?php echo $_smarty_tpl->tpl_vars['strStyles']->value;?>

<div id="content_container">
  <div id="content" class="wrapper">
    <?php echo $_smarty_tpl->tpl_vars['content']->value;?>

  </div>
</div>
<script type="text/javascript">
<?php echo $_smarty_tpl->tpl_vars['js']->value;?>

<?php echo $_smarty_tpl->tpl_vars['jsActions']->value;?>

</script><?php }} ?>
