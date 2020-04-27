@extends('plantilla.plantilla')
@section('contenido')
<?php 
    $alumnos = DB::table('alumno_curso')
                ->join('alumno','alumno.alum_id','alumno_curso.alumno_id')
                ->where('alumno_curso.curso_id','=',$idcurso)
                ->orderby('alumno.alum_ape','asc')
                ->get();
?>
<div class="row">
    <div class="col-md-12">
        <div class="card my-3">
            <form action="{{url('asistencia')}}" method="POST">
            @method('POST')
            {{ csrf_field() }}
            <div class="card-header">
                <div class="col-md-3">
                    <input type="date" class="form-control" name="asis_fecha">
                    <input type="hidden" class="form-control" name="asis_idcurso" value="{{$idcurso}}">
                </div>
            </div>
            <div class="card-body">
                <table class="table table-responsive" id="">
                    <thead>
                        <tr>
                            <th class="">Alumnos</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($alumnos as $a)
                            <tr>
                                <td>{{$a->alum_ape.', '.$a->alum_nom}}</td>
                                <input type="hidden" value="{{$a->alum_id}}" name="data[{{$a->alum_id}}][asis_idalumno]" class="form-control-plaintext">
                                <td>
                                    <select name="data[{{$a->alum_id}}][asis_est]" id="">
                                        <option value="0" selected>A</option>
                                        <option value="1">T</option>
                                        <option value="2">F</option>
                                    </select>
                                </td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
                <input type="submit" class="btn btn-primary" id="btn-only1click" value="Registrar">
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script type="text/javascript">
    // Variable global que nos dirá si hemos dado un click al botón
var clicando= false;

// Evento de click del primer botón
$("#btn-dobleclick").click(function() {
  // Mostramos el Alert
  alert( "Handler for dobleclick.click() called." );
});

// Evento del segundo boton
$("#btn-only1click").click(function() {
  // Si ha sido clicado
  if (clicando){
    // Mostramos que ya se ha clicado, y no puede clicarse de nuevo
    alert( "Que ya he realizado un click." );
  // Si no ha sido clicado
  } else {
    // Le decimos que ha sido clicado
    clicando= true;
    // Mostramos el mensaje de que ha sido clicado
    alert( "Asistencia Registrada Correctamente, espere a que se actualize el registro de la asistencia porfavor." );
  }
});
</script>
@endsection