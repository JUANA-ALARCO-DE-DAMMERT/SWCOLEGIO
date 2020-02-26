<!DOCTYPE html>
<html>
<head>
    <title>Apoderado </title>
    <meta http-equiv="refresh" content="30">
</head>
<body>

</body>
</html>
@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6">
        <a href="{{url('apoderado/create')}}" class="btn btn-primary">Registrar apoderado</a>
    </div>
    <div class="col-md-6">
        @if (session('status'))
        <div class="alert alert-success" content="2">
        {{ session('status') }}
        </div>
        @endif
    </div>
    <div class="col-md-6">
        @if (session('status2'))
        <div class="alert alert-warning">
        {{ session('status2') }}
        </div>
        @endif
    </div>
    <div class="col-md-6">
        @if (session('status3'))
        <div class="alert alert-danger">
        {{ session('status3') }}
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
                            <th>Teléfono</th>
                            <th>E-mail</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($apoderados as $apod)
                        <tr>
                            <td>{{$apod->apod_dni}}</td>
                            <td>{{$apod->apod_ape}}</td>
                            <td>{{$apod->apod_nom}}</td>
                            <td>
                                @if ($apod->apod_sexo == 1)
                                    Masculino
                                @else
                                    Femenino
                                @endif
                            </td>
                            <td>{{$apod->apod_tel}}</td>
                            <td>{{$apod->apod_email}}</td>
                            <td>   
                               <a href="{{url('apoderado/'.$apod->apod_id.'/edit')}}" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>
                                <a data-toggle="modal" data-target="#modal-delete-{{$apod->apod_id}}" class="btn btn-danger btn-sm" href=""> <i class="fa fa-trash" ></i></a>
                                @include('apoderado.delete')
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