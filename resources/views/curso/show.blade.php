@extends('plantilla.plantilla')
@section('contenido')
<div class="row">
<div class="col-sm-12">

    <div class="card my-3">
        <div class="card-header">
            <i class="fa fa-align-justify"></i> Código del curso: {{$curso->curs_id}}
        </div>
        <div class="card-body">
            
            <a href="#" class="btn btn-light">Asistencias</a>
            <a href="#" class="btn btn-light">Notas</a>
        </div>
    </div>

</div>
</div>
@endsection