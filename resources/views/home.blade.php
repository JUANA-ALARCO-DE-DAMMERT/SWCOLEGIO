<?php 
  // $mydatos = DB::table('empleados')
  //             ->join('role_user','role_user.user_id','empleados.emp_dni')
  //             ->join('roles','roles.id','role_user.role_id')
  //             ->where('empleados.emp_dni','=',Auth::user()->usuario)->first();

  $alumnodatos = DB::table('alumno')
                  ->where('alumno.alum_dni','=',Auth::user()->usuario)->first();


        // return view('apoderado.index',['apoderados'=>$data]);

?>
@extends('plantilla.plantilla')
@section('contenido')
@if(Auth::user()->hasrole('admin'))
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Bienvenido:  </h1>
    <h2 class="h3 mb-0 text-gray-800">Cargo:  </h2>
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
<div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Total de alumnos por Año</h6>
</div>
<!-- TOTAL DE ESTUDIANTES POR CADA AÑO -->
<div class="row">
<!-- 1ero de secundaria total -->
          <div class="col-sm-6 col-md-2">
            <div class="card">
              <div class="card-body">
                <div class="h1 text-muted text-right mb-4">
                  <i class="icon-people"></i>
                </div>
                <div class="text-value">9999</div>
                <small class="text-muted text-uppercase font-weight-bold">1ro secundaria</small>
                <div class="progress progress-xs mt-3 mb-0">
                  <div class="progress-bar bg-info" role="progressbar" style="width: 90%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
<!-- Fin -->
    <!-- 2do de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">2do secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 3ero de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">3ro secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 4to de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">4to secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 5to de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">5to secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
              @endif
<!-- Fin -->
              @if(Auth::user()->hasrole('alum'))       

<div class="d-sm-flex align-items-center justify-content-between mb-4">
  <h1 class="h4 mb-0 text-gray-800">Bienvenido Alumno(a): {{$alumnodatos->alum_ape.', '.$alumnodatos->alum_nom}}  </h1> 
  <h1 class="h4 mb-0 text-gray-800">Grado: {{$alumnodatos->alum_grad.' Secundaria'}} </h1>
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
<!-- <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Datos Basicos del Alumno</h6>
</div>
            <div class="card-group mb-4">
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-people"></i>
                  </div>
                  <div class="text-value">87.500</div>
                  <small class="text-muted text-uppercase font-weight-bold">Visitors</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-user-follow"></i>
                  </div>
                  <div class="text-value">385</div>
                  <small class="text-muted text-uppercase font-weight-bold">New Clients</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-basket-loaded"></i>
                  </div>
                  <div class="text-value">1238</div>
                  <small class="text-muted text-uppercase font-weight-bold">Products sold</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-pie-chart"></i>
                  </div>
                  <div class="text-value">28%</div>
                  <small class="text-muted text-uppercase font-weight-bold">Returning Visitors</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="h1 text-muted text-right mb-4">
                    <i class="icon-speedometer"></i>
                  </div>
                  <div class="text-value">5:33:11</div>
                  <small class="text-muted text-uppercase font-weight-bold">Avg. Time</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div> -->
<div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Datos Basicos del Alumno</h6>
</div>
<table border="1" class="table table-responsive-sm table-hover table-sm" id="dataTable">
  <tr>
    <th class="tg-cly1" colspan="3">Apellidos</th >
    <td class="tg-cly1" colspan="8">{{$alumnodatos->alum_ape}}</td>
  </tr>
  <tr>
    <th class="tg-cly1" colspan="3">Nombres</th>
    <td class="tg-0lax" colspan="8">{{$alumnodatos->alum_nom}}</td>
  </tr>
  <tr>
    <th class="tg-cly1" colspan="3">Sexo</th>
    <td class="tg-0lax" colspan="8">
                              @if ($alumnodatos->alum_sexo == 1)
                                    Masculino
                                @else
                                    Femenino
                                @endif      
    </td>
  </tr>
  <tr>
    <th class="tg-cly1" colspan="3">Grado</th>
    <td class="tg-0lax" colspan="8">{{$alumnodatos->alum_grad}}° de secundaria</td>
  </tr>
  <tr>
    <th class="tg-cly1" colspan="3">Fecha de Nacimiento</th>
    <td class="tg-0lax" colspan="8">{{$alumnodatos->alum_fnac}}</td>
  </tr>
  <tr>

    <th class="tg-cly1" colspan="3">EMAIL DE BOLETA</th>
    <td class="tg-0lax" colspan="8"></td>
  </tr>
  <tr>
    <th class="tg-cly1" colspan="3">APODERADO</th>
    <td class="tg-0lax" colspan="8"></td>
  </tr>


</table>

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
</div>
@endsection
