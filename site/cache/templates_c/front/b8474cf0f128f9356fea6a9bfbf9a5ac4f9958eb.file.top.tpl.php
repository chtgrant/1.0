<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:54
         compiled from "/home/enlatam/public_html/site/template/front/tpl/top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:138359054954d2e33a734024-29304745%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b8474cf0f128f9356fea6a9bfbf9a5ac4f9958eb' => 
    array (
      0 => '/home/enlatam/public_html/site/template/front/tpl/top.tpl',
      1 => 1423025464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '138359054954d2e33a734024-29304745',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'CFG_URL' => 0,
    '_SESSION' => 0,
    '_ROOT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2e33a7fcd07_35641679',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33a7fcd07_35641679')) {function content_54d2e33a7fcd07_35641679($_smarty_tpl) {?><div class="hdr">
	<div class="body-wrapper">
		<a href="<?php echo $_smarty_tpl->tpl_vars['CFG_URL']->value;?>
" class="logo"></a>
		<?php if ($_smarty_tpl->tpl_vars['_SESSION']->value['userF']['email']!='') {?>
		<div class="login-bar"><ul><li>Christian Grant</li><li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
mis-datos/">Mis datos</a></li> <li class="sep">|</li> <li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
?logoff=1">Cerrar sesión</a></li></ul></div>
		<?php }?>
		<ul>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['CFG_URL']->value;?>
">Inicio</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
cursos/">Cursos</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
webinars/">Webinars</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
workshops/">Workshops</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
contacto/">Contacto</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
login/">ingresar</a></li>
		</ul>
		<br class="cl" />
	</div>
</div>

<div class="hdr-phone">
	<ul>
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['CFG_URL']->value;?>
">Inicio</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
cursos/">Cursos</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
webinars/">Webinars</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
workshops/">Workshops</a></li>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
contacto/">Contacto</a></li>
	</ul>
</div>	<?php }} ?>
