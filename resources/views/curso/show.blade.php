@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6"></div>
    <div class="col-md-6">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <div class="card my-3">
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Código del curso: {{$curso->curs_id}}
            </div>
            <div class="card-body">
                
                <a href="{{url('asistencia/'.$curso->curs_id)}}" class="btn btn-light">Asistencias</a>
                <a href="{{url($curso->curs_id.'/notas')}}" class="btn btn-light">Notas</a>
                <a href="{{url($curso->curs_id.'/recursos')}}" class="btn btn-light">Recursos</a>
                @if(Auth::user()->hasRole('docen'))
                    <a href="{{url('newexamen',['idcurso'=>$curso->curs_id])}}" class="btn btn-light">Subir Exámen en línea</a>
                @endif
                @if(Auth::user()->hasRole('alum'))
                    <a href="{{url('exavirtual',['idcurso'=>$curso->curs_id])}}" class="btn btn-light">Ver exámen en línea</a>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection