@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6">
        <a href="{{url('curso/create')}}" class="btn btn-primary">Registrar curso</a>
    </div>
    <div class="col-md-6">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
</div>
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Apoderados</strong>
            </div>
            <div class="card-body">
                <table class="table table-responsive-sm table-hover table-sm" id="dataTable">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Docente</th>
                            <th>Asignatura</th>
                            <th>Año</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($cursos as $cur)
                        <tr>
                            <td>{{$cur->curs_id}}</td>
                            <td>{{$cur->trab_ape . ', '. $cur->trab_nom}}</td>
                            <td>{{$cur->asig_nom}}</td>
                            <td>{{$cur->curs_año}}</td>
                            <td>   
                                <a class="btn btn-sm btn-info"><i class="fa fa-search"></i></a> 
                                <a class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a> 
                                <a class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>      
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection