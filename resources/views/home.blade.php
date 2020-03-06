<?php 
  // $mydatos = DB::table('empleados')
  //             ->join('role_user','role_user.user_id','empleados.emp_dni')
  //             ->join('roles','roles.id','role_user.role_id')
  //             ->where('empleados.emp_dni','=',Auth::user()->usuario)->first();
  $trab_data = DB::table('trabajador')
                  ->join('role_user','role_user.user_id','trabajador.trab_dni')
                  ->join('roles','roles.id','role_user.role_id')
                  ->where('trabajador.trab_dni','=',Auth::user()->usuario)->first();
?>
@extends('plantilla.plantilla')
@section('contenido')
@if(Auth::user()->hasrole('admin'))
  @if($trab_data->trab_est == 1)
  <!DOCTYPE html>
<html>
<head>
    <title>Registro de Coordinadores</title>
    <meta http-equiv="refresh" content="5">
</head>
<body>

</body>
</html>

  <div class="card">
    <div class="card-header py-3" >
      <div class="d-sm-flex align-items-center justify-content-between my-1">
      <h1 class="h4 mb-0 text-gray-800">Bienvenido(a) : {{$trab_data->trab_ape.', '.$trab_data->trab_nom}} </h1>
      <h2 class="h4 mb-0 text-gray-800">Cargo: {{$trab_data->description}}  </h2>  
        <!-- inicio reloj -->
          <td>
        <body onload="mueveReloj()">
        <form name="form_reloj">
        <input type="text" name="reloj" size="10">
        </form>
        </body>
          </td>
        <!-- fin reloj -->            
      </div>
      
    </div>
  </div>

    </div>
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Total de Alumnos por Año</h6>
    </div>
<!-- Inicio -->    
<!-- TOTAL DE ESTUDIANTES POR CADA AÑO -->
<!-- 1ero de secundaria -->
            <div class="card-group mb-4">
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-address-book-o"></i>
                  </div>
                  <div class="text-value">87.500</div>
                  <small class="text-muted text-uppercase font-weight-bold">1ero de secundaria</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
<!-- 2do de secundaria -->
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-people"></i>
                  </div>
                  <div class="text-value">385</div>
                  <small class="text-muted text-uppercase font-weight-bold">2do de secundaria</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
<!-- 3ero de secundaria -->
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-people"></i>
                  </div>
                  <div class="text-value">1238</div>
                  <small class="text-muted text-uppercase font-weight-bold">3ro de secundaria</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
<!-- 4do de secundaria -->              
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-people"></i>
                  </div>
                  <div class="text-value">28%</div>
                  <small class="text-muted text-uppercase font-weight-bold">4to de secundaria</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
<!-- 5to de secundaria -->
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-people"></i>
                  </div>
                  <div class="text-value">5:33:11</div>
                  <small class="text-muted text-uppercase font-weight-bold">5to de secundaria</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
<!-- Fin -->
  @else
  <div class="d-sm-flex align-items-center justify-content-between my-4">
      <h1 class="h4 mb-0 text-gray-800">No tienes acceso </h1>
    </div>
  @endif
@endif



<?php 
  $alumnodatos = DB::table('alumno')
                  ->where('alumno.alum_dni','=',Auth::user()->usuario)->first();
?>
<!-- Home - Alumno -->
@if(Auth::user()->hasrole('alum'))
  @if($alumnodatos->alum_est == 1)
  <div class="d-sm-flex align-items-center justify-content-between my-4">
    <h1 class="h4 mb-0 text-gray-800">Bienvenido Alumno(a): {{$alumnodatos->alum_ape.', '.$alumnodatos->alum_nom}}  </h1> 
    <h1 class="h4 mb-0 text-gray-800">Grado: {{$alumnodatos->alum_grad.' ° de Secundaria'}} </h1>  
  <!-- inicio reloj -->
  <td>
<body onload="mueveReloj()">
<form name="form_reloj">
<input type="text" name="reloj" size="10">
</form>
</body>
  </td>
<!-- fin reloj -->
  </div>

  @else
  <div class="d-sm-flex align-items-center justify-content-between my-4">
    <h1 class="h4 mb-0 text-gray-800">No tienes acceso</h1> 
  </div>
  @endif
@endif

<html>
<head>
<title>Reloj con Javascript</title>
<script language="JavaScript">
function mueveReloj(){
    momentoActual = new Date()
    hora = momentoActual.getHours()
    minuto = momentoActual.getMinutes()
    segundo = momentoActual.getSeconds()

    horaImprimible = hora + " : " + minuto + " : " + segundo

    document.form_reloj.reloj.value = horaImprimible

    setTimeout("mueveReloj()",1000)
}
</script>
</head>


</html>


@endsection