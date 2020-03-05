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
    <div class="d-sm-flex align-items-center justify-content-between my-4">
      <h1 class="h4 mb-0 text-gray-800">Bienvenido(a) : {{$trab_data->trab_ape.', '.$trab_data->trab_nom}} </h1> 
      <h2 class="h4 mb-0 text-gray-800">Cargo: {{$trab_data->description}} </h2>
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
                  <small class="text-muted text-uppercase font-weight-bold">Total de alumnos</small>
                  <div class="progress progress-xs mt-3 mb-0">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 90%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
  <!-- Fin -->
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
  <!-- Fin -->
</div>
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
  </div>
  @else
  <div class="d-sm-flex align-items-center justify-content-between my-4">
    <h1 class="h4 mb-0 text-gray-800">No tienes acceso</h1> 
  </div>
  @endif
@endif



@endsection