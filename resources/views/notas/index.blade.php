@extends('plantilla.plantilla')
@section('contenido')
<?php 
?>
<div class="row mt-4">
    <div class="col-md-6">
        <a href="{{url('registronotas/'.$idcurso.'/'.$nbim)}}" class="btn btn-primary">Registrar notas</a>
    </div>
    <div class="col-md-6">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card my-3">
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Código del curso: {{$idcurso}} / {{$nbim}}° Bimestre 
                <div class="card-header-actions">
                    <a href="{{url($idcurso.'/notas')}}" class="btn btn-block btn-outline-dark btn-sm"><i class="fa fa-mail-reply"></i></a>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-responsive" id="">
                    <thead>
                        <tr>
                            <th>Alumnos</th>
                            <th class="text-center">N1</th>
                            <th class="text-center">N2</th>
                            <th class="text-center">N3</th>
                            <th class="text-center">Promedio</th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($alumnos as $a)
                            <tr>
                                <td>{{$a->alum_ape .', '.$a->alum_nom}}</td>
                                <td class="text-center">{{$a->not_n1}}</td>
                                <td class="text-center">{{$a->not_n2}}</td>
                                <td class="text-center">{{$a->not_n3}}</td>
                                <td class="text-center">{{$a->not_promedio}}</td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection