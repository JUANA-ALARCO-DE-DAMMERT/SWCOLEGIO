@extends('plantilla.plantilla')
@section('contenido')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <i class=""> Apoderados</i>
            </div>
            <div class="card-body">
                <table class="table table-responsive table-hover table-sm" id="dataTable">
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
                               <a class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>       
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