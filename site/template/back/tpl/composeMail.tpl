<div class="modal-header">
	<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	<h4 id="myModalLabel" class="modal-title">Enviar Email</h4>
</div>

<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<div id="mailPre"></div>
			<div class="form-group">{$fieldTo}</div>
			<div class="form-group" style="display:none;">{$fieldCC}</div>
			<div class="form-group" style="display:none;">{$fieldCCO}</div>
			<div class="form-group"><textarea required="" rows="5" placeholder="Content" class="form-control"></textarea></div>
			<div id="mailPos"></div>
		</div>
	</div>
</div>
<div class="modal-footer">
	<button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
	<button class="btn btn-primary" type="button">Enviar</button>
</div>