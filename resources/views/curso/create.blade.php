@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Nuevo curso</strong>
            </div>
            <div class="card-body">
                <form action="{{url('curso')}}" method="POST" class="form-horizontal"> 
                @method('POST')
                {{ csrf_field() }}
                    @if (count($errors)>0)
                    <div class="alert alert-danger">
                        <p>Corregir los siguientes campos:</p>
                        <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{$error}}</li>
                        @endforeach
                        </ul>
                    </div>
                    @endif
                    
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Asignatura</label>
                        <div class="col-md-3">
                            <select name="curs_idasig" class="form-control" id="select-asignatura" required>
                                <option hidden>--- Seleccione ---</option>
                                @foreach($asignaturas as $asig)
                                <option value="{{$asig->asig_id}}">{{$asig->asig_nom}}</option>
                                @endforeach
                            </select>
                        </div>
                        <label class="col-md-1 col-form-label">Docente</label>
                        <div class="col-md-4">
                            <select name="curs_iddocen" class="form-control" id="select-docente" required>
                                <option hidden>--- Seleccione ---</option>
                                <option value=""></option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Año</label>
                        <div class="col-md-2">
                            <select class="form-control"  name="curs_año" size="1" readonly>
                                <option value="2020" selected>2020</option>
                                <option value="2021">2021</option>
                                <option value="2022">2022</option>
                                <option value="2023">2023</option>
                                <option value="2024">2024</option>
                            </select>
                        </div>
                    </div> 

                    <div class="form-actions">
                        <input type="submit" value="Registrar" class="btn btn-primary">
                        <a href="{{url('curso')}}" class="btn btn-danger">Cancelar</a>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    $(function(){
        $('#select-asignatura').on('change', buscarDocente);
    });

    function buscarDocente() {
        var idasig = $(this).val();
        if(! idasig){
        $('#select-docente').html('<option value="" hidden>--- Seleccione ---</option>');
        }

        //AJAX
        $.get('../api/asignatura/'+idasig+'/docente', function (data) {
            var html_select = '<option value="" hidden>--- Seleccione ---</option>';
            for (var i=0; i<data.length; i++)
            html_select += '<option value="'+data[i].trab_id+'">'+data[i].trab_ape+', '+data[i].trab_nom+'</option>';
            $('#select-docente').html(html_select);
        });
    }
</script>
@endsection