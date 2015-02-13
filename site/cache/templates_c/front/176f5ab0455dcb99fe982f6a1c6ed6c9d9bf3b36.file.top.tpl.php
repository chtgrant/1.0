<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:51:06
         compiled from "/home/enlatam/public_html/newsite/site/template/front/tpl/top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:85802578954d1a53a9eb521-70940347%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '176f5ab0455dcb99fe982f6a1c6ed6c9d9bf3b36' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/front/tpl/top.tpl',
      1 => 1423025464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '85802578954d1a53a9eb521-70940347',
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
  'unifunc' => 'content_54d1a53aa26015_22874211',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a53aa26015_22874211')) {function content_54d1a53aa26015_22874211($_smarty_tpl) {?><div class="hdr">
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
