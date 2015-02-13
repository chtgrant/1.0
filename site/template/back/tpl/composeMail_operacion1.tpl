<div class="modal-header">
	<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	<h4 id="myModalLabel" class="modal-title">Enviar Email</h4>
</div>

<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<form id="mailForm">
			<div id="mailPre"></div>
			<!-- div class="form-inline" style="margin-bottom:7px;">
				<div class="form-group" style="min-width:200px;">
					<select class="form-control" style="width:100%;">
						<option>Draft</option>
						<option>Published</option>
					</select>
				</div>
				
				<div class="form-group">
					<button class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-plus"></span> Agregar</button>
				</div>
			</div -->
			<!-- div class="form-group"><input type="text" required="" placeholder="Para" class="form-control"></div -->
			<div class="form-group">
				<select multiple style="width:100%" class="select2" name="to" id="to" placeholder="Para">
					{$html.toOpt}
				</select>
			</div>
			<div class="form-group"><input type="text" placeholder="CC agregar email para copia" class="form-control" name="cc" id="cc"></div>
			<div class="form-group"><input type="text" placeholder="asunto" class="form-control" name="cc" id="cc" value="Datos de oficialización de permiso y entrega de mercadería"></div>
			<div class="form-group" style="display:none;">{$fieldCCO}</div>
			<div class="form-group"><textarea required="" rows="5" placeholder="Content" class="form-control" name="content" id="content">{$html.content}</textarea></div>
			<div id="mailPos"></div>
			</form>
		</div>
	</div>
</div>
<div class="modal-footer">
	<button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
	<button class="btn btn-primary" type="button" onclick="sendOperacionInfo({$html.id_operacion})">Enviar</button>
</div>
<script type="text/javascript">initSelect2('to');</script>