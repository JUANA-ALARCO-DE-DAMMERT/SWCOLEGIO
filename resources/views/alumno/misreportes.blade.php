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
                <i class="fa fa-align-justify"></i> Mis reportes
            </div>
            <div class="card-body">
                
                <a href="{{url('misnotas/'.$idalumno)}}" class="btn btn-danger"><i class="fa fa-file-pdf-o
"></i> Boleta de notas</a>
            </div>
        </div>
    </div>
</div>
@endsection