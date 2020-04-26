@extends('plantilla.plantilla')
@section('contenido')
<div class="container-fluid my-3">
    <div class="animated fadeIn">
        <div class="card">
            <div class="card-header">
                Mis cursos a cargo
                <div class="card-header-actions">
                    <a href="{{route('home')}}" class="btn btn-block btn-outline-dark btn-sm"><i class="fa fa-mail-reply"></i></a>
                </div>
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
                            <td>
                                @if ($mc->curs_grado <= 6)
                                    {{$mc->curs_grado . '° de primaria'}}
                                @elseif($mc->curs_grado == 7)
                                    {{'1° de secundaria'}}
                                @elseif($mc->curs_grado == 8)
                                    {{'2° de secundaria'}}          
                                @elseif($mc->curs_grado == 9)
                                    {{'3° de secundaria'}}  
                                @elseif($mc->curs_grado == 10)
                                    {{'4° de secundaria'}}  
                                @elseif($mc->curs_grado == 11)
                                    {{'5° de secundaria'}}  
                                @else
                                    {{'Egresado'}}  
                                @endif
                            </td>
                            <td>{{$mc->asig_nom}}</td>
                            <td>{{$mc->curs_año}}</td>
                            <td>
                                <a class="btn btn-sm btn-light" href="{{url('curso/'.$mc->curs_id)}}"><i class="fa fa-folder-open-o"></i></a>  
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