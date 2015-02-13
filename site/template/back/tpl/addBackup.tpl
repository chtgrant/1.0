<div class="modal-header">
	<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	<h4 id="myModalLabel" class="modal-title">Generar backup</h4>
</div>

<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<div id="mailPre"></div>
			<div class="form-group"><textarea required="" rows="5" placeholder="Descripcion" class="form-control"></textarea></div>
			<div id="mailPos"></div>
		</div>
	</div>
</div>
<div class="modal-footer">
	<button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
	<button class="btn btn-primary" type="button" onclick="generateDBBackup();" id="generateBackup">Generar</button>
</div>