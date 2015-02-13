<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
        &times;
    </button>
    <h4 class="modal-title" id="myModalLabel">Consultar sobre el curso: <i style="font-size:14px;">{$d.titulo}</i></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Asunto" required />
            </div>
            <div class="form-group">
                <textarea class="form-control" placeholder="Texto" rows="5" required></textarea>
            </div>
        </div>
    </div>
    
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">
        Cancelar
    </button>
    <button type="button" class="btn btn-primary" onclick="sendConsulta({$d.id_cursos});">
        Enviar
    </button>
</div>