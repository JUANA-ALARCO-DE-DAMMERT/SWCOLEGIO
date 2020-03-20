@extends('plantilla.plantilla')
@section('contenido')
<div class="container-fluid my-3">
    <div class="animated fadeIn">
        <div class="card">
            <div class="card-header">
                Mis cursos a cargo
            </div>
            <div class="card-body">
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr class="table-info">
                            <th>Grado</th>
                            <th>Curso</th>
                            <th>Año</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($mis_cursos as $mc)
                        <tr>
                            <td>{{$mc->curs_grado}} ° de secundaria</td>
                            <td>{{$mc->asig_nom}}</td>
                            <td>{{$mc->curs_año}}</td>
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