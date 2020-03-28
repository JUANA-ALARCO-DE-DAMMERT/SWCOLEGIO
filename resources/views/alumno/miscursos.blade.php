@extends('plantilla.plantilla')
@section('contenido')
<div class="container-fluid my-3">
    <div class="animated fadeIn">
        <div class="card">
            <div class="card-header">
                Mis cursos
            </div>
            <div class="card-body">
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr class="table-info">
                            <th>Curso</th>
                            <th>Grado</th>
                            <th>Año</th>
                            <th>Opciones</th>
                        </tr>
                        
                    </thead>
                    <tbody>
                        @foreach($cursos as $c)
                        <tr>
                            <td>{{$c->asig_nom}}</td>
                            <td>{{$c->curs_grado}}° de secundaria</td>
                            <td>{{$c->curs_año}}</td>
                            <td>
                                <a class="btn btn-sm btn-light"><i class="fa fa-folder-open-o"></i></a>  
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