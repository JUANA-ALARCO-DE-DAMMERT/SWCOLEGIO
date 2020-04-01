@extends('plantilla.plantilla')
@section('contenido')
<?php 
    $fechas = DB::table('asistencia')
                    ->select('asistencia.asis_fecha')
                    ->where('asistencia.asis_idcurso','=',$idcurso)
                    ->distinct()
                    ->get();
    $alumnos = DB::table('alumno_curso')
                ->join('alumno','alumno.alum_id','alumno_curso.alumno_id')
                ->where('alumno_curso.curso_id','=',$idcurso)
                ->orderby('alumno.alum_ape','asc')
                ->get();
?>
<div class="row mt-4">
    <div class="col-md-6">
        <a href="{{url('asistencia/registrar/'.$idcurso)}}" class="btn btn-primary">Registrar asistencia</a>
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
            </div>
            <div class="card-body">
                <table class="table table-responsive" id="">
                    <thead>
                        <tr>
                            <th>Alumnos</th>
                            @foreach($fechas as $f)
                            <th><small>{{date("d/m/Y", strtotime($f->asis_fecha))}}</small></th>
                            @endforeach    
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($alumnos as $a)
                            <tr>
                                <td>{{$a->alum_ape.', '.$a->alum_nom}}</td>
                                @foreach($fechas as $f)
                                <?php 
                                    $data = DB::table('asistencia')
                                                    ->where([['asistencia.asis_fecha','=',$f->asis_fecha],
                                                            ['asistencia.asis_idcurso','=',$idcurso],
                                                            ['asistencia.asis_idalumno','=',$a->alum_id]])
                                                    ->first();
                                ?>
                                    <td>
                                        @if ($data->asis_est === 0)
                                            A
                                        @elseif ($data->asis_est === 1)
                                            T
                                        @else
                                            F
                                        @endif
                                    </td>
                                @endforeach
                            </tr>
                            @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection