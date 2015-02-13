<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:54
         compiled from "/home/enlatam/public_html/site/template/front/tpl/body.tpl" */ ?>
<?php /*%%SmartyHeaderCode:50996396454d2e33a7ffa52-72956993%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52fa37371db599fec9fed9d0693d901b4cf8289b' => 
    array (
      0 => '/home/enlatam/public_html/site/template/front/tpl/body.tpl',
      1 => 1423025464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '50996396454d2e33a7ffa52-72956993',
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
  'unifunc' => 'content_54d2e33a892ac8_01462084',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33a892ac8_01462084')) {function content_54d2e33a892ac8_01462084($_smarty_tpl) {?><?php echo $_smarty_tpl->tpl_vars['styleRedefine']->value;?>

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
