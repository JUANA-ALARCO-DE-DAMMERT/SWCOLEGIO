@extends('plantilla.plantilla')
@section('contenido')
<table class="table">
    <thead>
        <tr>
            <th>Curso</th>
            <th>Grado</th>
            <th>Año</th>
        </tr>
    </thead>
    <tbody>
        @foreach($mis_cursos as $mc)
        <tr>
            <td>{{$mc->asig_nom}}</td>
            <td>{{$mc->curs_grado}} ° de secundaria</td>
            <td>{{$mc->curs_año}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection