
<div id="body">
	<div class="curso-dt">
		<div class="curso-dt-l">
			<h1 {$d.titleLong}>{$d.titulo}</h1>
			<div class="img-wrapper">
				<img src="{$CFG_FOL_UPLOAD_P}{$d.img}" alt ="" />
			</div>
			<div class="img-wrapper mtw">&nbsp;</div>
			<div clasS="curso-intro">
				<h2 class="title3">Objetivo</h2>
				<p>{$d.objetivo}</p>
			</div>
			<div clasS="curso-intro">
				<h2 class="title3">Link del curso</h2>
				<p>{$_URL}</p>
				<p><a href="#">Compartir</a></p>
			</div>
		</div>
		<div class="curso-dt-r">
			<div class="social">
					<a href="https://www.facebook.com/sharer/sharer.php?u={$_URL}" class="social-1" id="facebookBtn-link"></a>
					<a href="#" class="social-2"></a>
					<a href="https://plus.google.com/share?url={$_URL}" class="social-3" id="googleBtn-link"></a>
					<span>Compartir</span>
			</div>
			<div class="curso-sch">
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_1.png" class="" alt="">
					{if $d.proximamente == 1}<span>Próximamente</span>{else}<span>{$d.fecha_comienzo}</span><br /><span class="d">{$d.dias_horarios}</span>{/if}
				</div>
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_3.png" class="" alt="">
					<span>{$d.precio_ip}</span><br /><span class="d">{$d.precio_descripcion}</span>	
				</div>
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_4.png" class="" alt="">
					<span>{$d.modalidad}</span>
				</div>
				{if $d.precio_ip != ""}
				<div class="curso-sch-item">
					<img style="float:left;" src="/site/template/front/images/icono_curso_2.png" class="" alt="">
					<span class="m">{$d.duracion}</span>
				</div>
				{/if}
				{$d.profesores}
				<div class="curso-ins-sent" id="cursoInsSent">
				</div>
				<div class="curso-ins" id="cursoIns">
					<form>
						<input type="hidden" name="curso" id="Icurso" value="{$d.id_cursos}" />
						<input type="hidden" name="curso2" id="Icurso2" value="{$d.id_cursos}" />
						<input type="hidden" name="consulta" id="Iconsulta" value="" />
					{if $_SESSION.userF.id > 0 && $_SESSION.userF.profile == 4}
						<input type="hidden" name="user" id="Iuser" value="{$_SESSION.userF.id}" />
					{else}
						<input type="text" name="nombre" id="Inombre" placeholder="Nombre" /><br />
						<input type="text" name="apellido" id="Iapellido" placeholder="Apellido" /><br />
						<input type="text" name="email" id="Iemail" placeholder="E-Mail" /><br />
						<input type="text" name="telefono" id="Itelefono" placeholder="Teléfono" /><br />
						<textArea tname="comment" id="Icomment" placeholder="Comentarios"></textarea><br />
					{/if}
					</form>
				</div>
				<button class="btn btn-blue" onclick="inscribe();" id="but1">Inscribite!</button>
				<button class="btn btn-blue fr" onclick="consulta();" id="but2">Consulta</button>
			</div>
			{if $d.lugar != ""}
			<iframe frameborder="0" style="border:0;width:375px;height:200px;margin:10px 0 0 0;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDZHuHV0JJ4v01mya8YdZGPzoBXmB02oXk&q={$d.lugar}"></iframe>
			{/if}
			
		</div>
		<br class="cl" />
		<div style="width:100%;max-width:1170px;height:4px;background:#1c6aab;margin:40px 10px;"></div>
		<h2 class="title3 mt3">Temario</h2>
		<div class="curso-cont">
			{$d.unidades}
			<br class="cl">
</div>

	</div>
</div>
