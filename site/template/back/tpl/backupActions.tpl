<div class="modal-header">
	<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	<h4 id="myModalLabel" class="modal-title">Acciones</h4>
</div>

<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<div id="mailPre"></div>
			<div class="form-group">
				<a class="btn btn-labeled btn-success" href="javascript:void(0);" onclick="downloadFile('{$d.file}')"> <span class="btn-label"><i class="glyphicon glyphicon-floppy-save"></i></span>Bajar backup </a>
				<a class="btn btn-labeled btn-danger" href="javascript:void(0);" onclick="deleteRegister('userbackup',{$d.id_userbackup},'{$d.fileName}')"> <span class="btn-label"><i class="glyphicon glyphicon-trash"></i></span>Eliminar backup </a>
				<a class="btn btn-labeled btn-warning" href="javascript:void(0);" onclick="restoreDatabase({$d.id_userbackup},'{$d.date_added}')"> <span class="btn-label"><i class="glyphicon glyphicon-refresh"></i></span>Restaurar Base de datos </a>
			</div>
			<div id="mailPos"></div>
		</div>
	</div>
</div>
