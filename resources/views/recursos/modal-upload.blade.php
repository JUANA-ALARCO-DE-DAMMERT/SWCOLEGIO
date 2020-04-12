<div class="modal fade" id="uploadFile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Subir recurso</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
        <form action="{{url('upload')}}" method="POST" enctype="multipart/form-data">
            <div class="modal-body">
                {{csrf_field()}}
                <input type="file" name="rec_archivo" required>
                <input type="hidden" name="rec_curso" value="{{$idcurso}}">
                <input type="hidden" name="rec_bimestre" value="{{$nbim}}">
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                <button class="btn btn-primary" type="submit">Enviar</button>
            </div>
        </form>
    </div>
    <!-- /.modal-content-->
  </div>
  <!-- /.modal-dialog-->
</div>