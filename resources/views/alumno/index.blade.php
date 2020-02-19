@extends('plantilla.plantilla')
@section('contenido')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <i class=""> Alumnos</i>
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
                        <tr>
                            <td>75200120</td>
                            <td>RAMIREZ RODRIGUEZ</td>
                            <td>JORGE LUIS</td>
                            <td>Masculino</td>
                            <td>4° de Secundaria</td>
                            <td><span class="badge badge-success">Activo</span></td>
                            <td>
                               <a class="btn btn-sm btn-info"><i class="fa fa-search"></i></a>         
                               <a class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>         
                               <a class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>         
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection