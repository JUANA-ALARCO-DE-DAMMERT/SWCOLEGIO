@extends('plantilla.plantilla')
@section('contenido')
<?php  $q = DB::table('curso')
                ->join('asignatura','asignatura.asig_id','curso.curs_idasig')
                ->where('curso.curs_id','=',$idcurso)
                ->first(); ?>
<div class="row mt-4">
    <div class="col-md-6">
        @if(Auth::user()->hasRole('docen'))
            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#uploadVideo"><i class="fa fa-upload"></i> Subir video</button>
             @include('recvideos.create')
        @endif
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
    <div class="col-sm-12">
        <div class="card my-3">
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Curso: {{$q->asig_nom}} 
                <div class="card-header-actions">
                    <a href="{{url('curso/'.$idcurso)}}" class="btn btn-block btn-outline-dark btn-sm"><i class="fa fa-mail-reply"></i></a>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-hover table-bordered table-sm">
                    <thead>
                        <tr>
                            <th>Titulo</th>
                            <th>Propietario</th>
                            <th>Fecha</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($videos as $v)
                            <tr>
                                <td>{{$v->vid_titulo}}</td>
                                <td>{{$v->trab_ape . ', ' . $v->trab_nom}}</td>
                                <td>{{$v->vid_fecha}}</td>
                                <td>
                                    <a href="{{url('recvideo/'.$v->vid_id)}}" class="btn btn-secondary btn-sm"><i class="fa fa-video-camera"></i></a>
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