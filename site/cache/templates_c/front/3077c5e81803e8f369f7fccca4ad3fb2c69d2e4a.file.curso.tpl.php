<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:54
         compiled from "/home/enlatam/public_html/site/template/front/tpl/curso.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2449174954d2e33a5c6076-50159060%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3077c5e81803e8f369f7fccca4ad3fb2c69d2e4a' => 
    array (
      0 => '/home/enlatam/public_html/site/template/front/tpl/curso.tpl',
      1 => 1423025464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2449174954d2e33a5c6076-50159060',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'd' => 0,
    'CFG_FOL_UPLOAD_P' => 0,
    '_URL' => 0,
    '_SESSION' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2e33a6784d2_93803428',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33a6784d2_93803428')) {function content_54d2e33a6784d2_93803428($_smarty_tpl) {?>
<div id="body">
	<div class="curso-dt">
		<div class="curso-dt-l">
			<h1 <?php echo $_smarty_tpl->tpl_vars['d']->value['titleLong'];?>
><?php echo $_smarty_tpl->tpl_vars['d']->value['titulo'];?>
</h1>
			<div class="img-wrapper">
				<img src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_UPLOAD_P']->value;?>
<?php echo $_smarty_tpl->tpl_vars['d']->value['img'];?>
" alt ="" />
			</div>
			<div class="img-wrapper mtw">&nbsp;</div>
			<div clasS="curso-intro">
				<h2 class="title3">Objetivo</h2>
				<p><?php echo $_smarty_tpl->tpl_vars['d']->value['objetivo'];?>
</p>
			</div>
			<div clasS="curso-intro">
				<h2 class="title3">Link del curso</h2>
				<p><?php echo $_smarty_tpl->tpl_vars['_URL']->value;?>
</p>
				<p><a href="#">Compartir</a></p>
			</div>
		</div>
		<div class="curso-dt-r">
			<div class="social">
					<a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $_smarty_tpl->tpl_vars['_URL']->value;?>
" class="social-1" id="facebookBtn-link"></a>
					<a href="#" class="social-2"></a>
					<a href="https://plus.google.com/share?url=<?php echo $_smarty_tpl->tpl_vars['_URL']->value;?>
" class="social-3" id="googleBtn-link"></a>
					<span>Compartir</span>
			</div>
			<div class="curso-sch">
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_1.png" class="" alt="">
					<?php if ($_smarty_tpl->tpl_vars['d']->value['proximamente']==1) {?><span>Próximamente</span><?php } else { ?><span><?php echo $_smarty_tpl->tpl_vars['d']->value['fecha_comienzo'];?>
</span><br /><span class="d"><?php echo $_smarty_tpl->tpl_vars['d']->value['dias_horarios'];?>
</span><?php }?>
				</div>
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_3.png" class="" alt="">
					<span><?php echo $_smarty_tpl->tpl_vars['d']->value['precio_ip'];?>
</span><br /><span class="d"><?php echo $_smarty_tpl->tpl_vars['d']->value['precio_descripcion'];?>
</span>	
				</div>
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_4.png" class="" alt="">
					<span><?php echo $_smarty_tpl->tpl_vars['d']->value['modalidad'];?>
</span>
				</div>
				<?php if ($_smarty_tpl->tpl_vars['d']->value['precio_ip']!='') {?>
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_2.png" class="" alt="">
					<span class="m"><?php echo $_smarty_tpl->tpl_vars['d']->value['duracion'];?>
</span>
				</div>
				<?php }?>
				<?php echo $_smarty_tpl->tpl_vars['d']->value['profesores'];?>

				<div class="curso-ins-sent" id="cursoInsSent">
				</div>
				<div class="curso-ins" id="cursoIns">
					<form>
						<input type="hidden" name="curso" id="Icurso" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id_cursos'];?>
" />
						<input type="hidden" name="curso2" id="Icurso2" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id_cursos'];?>
" />
						<input type="hidden" name="consulta" id="Iconsulta" value="" />
					<?php if ($_smarty_tpl->tpl_vars['_SESSION']->value['userF']['id']>0&&$_smarty_tpl->tpl_vars['_SESSION']->value['userF']['profile']==4) {?>
						<input type="hidden" name="user" id="Iuser" value="<?php echo $_smarty_tpl->tpl_vars['_SESSION']->value['userF']['id'];?>
" />
					<?php } else { ?>
						<input type="text" name="nombre" id="Inombre" placeholder="Nombre" /><br />
						<input type="text" name="apellido" id="Iapellido" placeholder="Apellido" /><br />
						<input type="text" name="email" id="Iemail" placeholder="E-Mail" /><br />
						<input type="text" name="telefono" id="Itelefono" placeholder="Teléfono" /><br />
						<textArea tname="comment" id="Icomment" placeholder="Comentarios"></textarea><br />
					<?php }?>
					</form>
				</div>
				<button class="btn btn-blue" onclick="inscribe();" id="but1">Inscribite!</button>
				<button class="btn btn-blue fr" onclick="consulta();" id="but2">Consulta</button>
			</div>
			<?php if ($_smarty_tpl->tpl_vars['d']->value['lugar']!='') {?>
			<iframe frameborder="0" style="border:0;width:375px;height:200px;margin:10px 0 0 0;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDZHuHV0JJ4v01mya8YdZGPzoBXmB02oXk&q=<?php echo $_smarty_tpl->tpl_vars['d']->value['lugar'];?>
"></iframe>
			<?php }?>
			
		</div>
		<br class="cl" />
		<div style="width:100%;max-width:1170px;height:4px;background:#1c6aab;margin:40px 10px;"></div>
		<h2 class="title3 mt3">Temario</h2>
		<div class="curso-cont">
			<?php echo $_smarty_tpl->tpl_vars['d']->value['unidades'];?>

			<br class="cl">
</div>

	</div>
</div>
<?php }} ?>
