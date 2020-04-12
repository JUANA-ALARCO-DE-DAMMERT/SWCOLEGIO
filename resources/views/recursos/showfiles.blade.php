@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6">
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#uploadFile"><i class="fa fa-upload"></i> Subir recurso</button>
        @include('recursos.modal-upload')
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
                <i class="fa fa-align-justify"></i> Código del curso: {{$idcurso}} / {{$nbim}}° Bimestre / Recursos
                <div class="card-header-actions">
                    <a href="{{url($idcurso.'/recursos')}}" class="btn btn-block btn-outline-dark btn-sm"><i class="fa fa-mail-reply"></i></a>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-hover table-bordered table-sm">
                    <thead>
                        <tr>
                            <th>Archivo</th>
                            <th>Propietario</th>
                            <th>Fecha</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($files as $file)
                        <tr>
                            <form action="{{url('download')}}" method="POST">
                            @csrf
                                <td>{{$file->rec_archivo}}</td>
                                <td>
                                    @if ($file->rec_rol === 3)
                                        <?php 
                                            $doc = DB::table('trabajador')
                                                    ->where('trab_dni','=',$file->rec_dni)->first();
                                        ?>
                                        {{$doc->trab_ape . ', ' . $doc->trab_nom}} 
                                    @elseif ($file->rec_rol === 4)
                                        <?php 
                                            $alum = DB::table('alumno')
                                                    ->where('alum_dni','=',$file->rec_dni)->first();
                                        ?>
                                        {{$alum->alum_ape . ', ' . $alum->alum_nom}}
                                    @endif
                                </td>
                                <td>{{$file->rec_fechahora}}</td>
                                <input type="hidden" value="{{$file->rec_archivo}}" name="filename">
                                <input type="hidden" value="{{$idcurso}}" name="idcurso">
                                <td><button type="submit" class="btn btn-success btn-sm"><i class="fa fa-download"></i></button></td>
                            </form>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection