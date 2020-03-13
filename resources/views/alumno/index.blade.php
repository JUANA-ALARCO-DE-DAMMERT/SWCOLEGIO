@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6">
        <a href="{{url('alumno/create')}}" class="btn btn-primary">Registrar alumno</a>
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
                            <th>DNI</th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th>Sexo</th>
                            <th>Grado</th>
                            <th>Estado</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($alumnos as $alum)
                        <tr>
                            <td>{{$alum->alum_dni}}</td>
                            <td>{{$alum->alum_ape}}</td>
                            <td>{{$alum->alum_nom}}</td>
                            <td>
                              @if ($alum->alum_sexo == 1)
                                    Masculino
                                @else
                                    Femenino
                                @endif
                            </td>
                            <td>{{$alum->alum_grad}}° de secundaria</td>
                            <td>
                              @if ($alum->alum_est === 1)
                                <span class="badge badge-success">Activo</span>
                              @else
                              <span class="badge badge-danger">Inactivo</span>
                              @endif
                            </td>
                            <td>   
                                <a class="btn btn-sm btn-info" title="Buscar alumno"><i class="fa fa-search"></i></a> 
                                <a class="btn btn-sm btn-warning" title="Editar Alumno"><i class="fa fa-pencil"></i></a> 
                                <a class="btn btn-sm btn-danger" title="Eliminar Alumno"><i class="fa fa-trash"></i></a>      
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