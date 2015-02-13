<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:51:06
         compiled from "/home/enlatam/public_html/newsite/site/template/front/tpl/home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:66450525454d19ca1e41391-56895537%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4600b4ddcdc44edadf0b9b3ff719db773ed7dfe8' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/front/tpl/home.tpl',
      1 => 1423025463,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '66450525454d19ca1e41391-56895537',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d19ca1e92dc7_42590037',
  'variables' => 
  array (
    '_IMG' => 0,
    'cursoNew' => 0,
    'sectionCursos' => 0,
    'wpPosts' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d19ca1e92dc7_42590037')) {function content_54d19ca1e92dc7_42590037($_smarty_tpl) {?><div class="cont-slider">
<div class="banner">
	<ul>
		<li style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
slider/1.jpg');">
			<h2>Nuevo Master en Mobile Business</h2>
			<p>El mobile business es ya una realidad. El mundo de los teléfonos móviles está dominado por los smartphones, terminales con multitud de funcionalidades a través de los cuales los usuarios pueden navegar por internet, pasar su tiempo de ocio, comparar y comprar.</p>
					
			<button class="btn btn-blue">Inscribite</button>
		</li>

		<li style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
slider/2.jpg');">
			<!-- h2>Nuevo Master en Mobile Business</h2>
			<p>El mobile business es ya una realidad. El mundo de los teléfonos móviles está dominado por los smartphones, terminales con multitud de funcionalidades a través de los cuales los usuarios pueden navegar por internet, pasar su tiempo de ocio, comparar y comprar.</p>
					
			<button class="btn btn-blue">Inscribite</button -->
		</li>

		<li style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
slider/3.jpg');">
			<!-- h2>Nuevo Master en Mobile Business</h2>
			<p>El mobile business es ya una realidad. El mundo de los teléfonos móviles está dominado por los smartphones, terminales con multitud de funcionalidades a través de los cuales los usuarios pueden navegar por internet, pasar su tiempo de ocio, comparar y comprar.</p>
					
			<button class="btn btn-blue">Inscribite</button -->
		</li>

		<li style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
slider/4.jpg');">
			<!-- h2>Nuevo Master en Mobile Business</h2>
			<p>El mobile business es ya una realidad. El mundo de los teléfonos móviles está dominado por los smartphones, terminales con multitud de funcionalidades a través de los cuales los usuarios pueden navegar por internet, pasar su tiempo de ocio, comparar y comprar.</p>
					
			<button class="btn btn-blue">Inscribite</button -->
		</li>
	</ul>
</div>
</div>

<?php echo $_smarty_tpl->tpl_vars['cursoNew']->value;?>


<div class="body-wrapper">
	<h2 class="title">Cursos</h2>
	<?php echo $_smarty_tpl->tpl_vars['sectionCursos']->value['listCursos'];?>

</div>
<!-- div class="hdr-quienes bgHome" data-speed="3" data-type="background"></div -->	
<div class="body-wrapper">
	<h2 class="title">Blog</h2>
	<?php echo $_smarty_tpl->tpl_vars['wpPosts']->value;?>

</div>	
<?php }} ?>
