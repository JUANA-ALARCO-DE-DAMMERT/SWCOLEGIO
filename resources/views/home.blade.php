<?php
  $nro_alumnoprimero = DB::table('alumno')->where('alum_grad','=','1')->count();
  $nro_alumnosegundo = DB::table('alumno')->where('alum_grad','=','2')->count();
  $nro_alumnotercero = DB::table('alumno')->where('alum_grad','=','3')->count();
  $nro_alumnocuarto = DB::table('alumno')->where('alum_grad','=','4')->count(); 
  $nro_alumnoquinto = DB::table('alumno')->where('alum_grad','=','5')->count();

  $trab_data = DB::table('trabajador')
                  ->join('role_user','role_user.user_id','trabajador.trab_dni')
                  ->join('roles','roles.id','role_user.role_id')
                  ->where('trabajador.trab_dni','=',Auth::user()->usuario)->first();
?>
@extends('plantilla.plantilla')
@section('contenido')
@if(Auth::user()->hasrole('admin'))
  @if($trab_data->trab_est == 1)
    <div class="card my-2">
      <div class="card-header py-2">
        <div class="d-sm-flex align-items-center justify-content-between my-1">
          <h1 class="h4 mb-0 text-gray-800">Bienvenido(a) : {{$trab_data->trab_ape.', '.$trab_data->trab_nom}} </h1>
          <h2 class="h4 mb-0 text-gray-800">Cargo: {{$trab_data->description}}  </h2>  
            <!-- inicio reloj -->
            <form name="form_reloj">
              <input type="text" name="reloj" size="10">
            </form>
            <!-- fin reloj -->            
        </div>
      </div>
    </div>

    <!-- Cards N° de alumnos -->
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Total de Alumnos por Año</h6>
    </div>
    <div class="card-group">
      <!-- 1° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">{{$nro_alumnoprimero}}</div>
          <small class="text-muted text-uppercase font-weight-bold">1° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar"  aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">{{$nro_alumnoprimero}}</div>
          </div>
        </div>
      </div>
      <!-- 2° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">{{$nro_alumnosegundo}}</div>
          <small class="text-muted text-uppercase font-weight-bold">2° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">{{$nro_alumnosegundo}}</div>
          </div>
        </div>
      </div>
      <!-- 3° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">{{$nro_alumnotercero}}</div>
          <small class="text-muted text-uppercase font-weight-bold">3° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">{{$nro_alumnotercero}}.''. %</div>
          </div>
        </div>
      </div>
      <!-- 4° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">{{$nro_alumnocuarto}}</div>
          <small class="text-muted text-uppercase font-weight-bold">4° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" style="width:{{$nro_alumnocuarto}}.''.%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
        </div>
      </div>
      <!-- 5° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">{{$nro_alumnoquinto}}</div>
          <small class="text-muted text-uppercase font-weight-bold">5° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar"  aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">{{$nro_alumnoquinto}}.''. %</div>
          </div>
        </div>
      </div>
    </div>
  @else
    <div class="d-sm-flex align-items-center justify-content-between my-4">
      <h1 class="h4 mb-0 text-gray-800">No tienes acceso </h1>
    </div>
  @endif
@endif

@if(Auth::user()->hasrole('docen'))
  @if($trab_data->trab_est == 1)
    <div class="card my-2">
        <div class="card-header py-2">
          <div class="d-sm-flex align-items-center justify-content-between my-1">
            <h1 class="h4 mb-0 text-gray-800">Bienvenido(a) : {{$trab_data->trab_ape.', '.$trab_data->trab_nom}} </h1>
            <h2 class="h4 mb-0 text-gray-800">Cargo: {{$trab_data->description}}  </h2>  
              <!-- inicio reloj -->
              <form name="form_reloj">
                <input type="text" name="reloj" size="10">
              </form>
              <!-- fin reloj -->            
          </div>
        </div>
      </div>
  @else
    <div class="d-sm-flex align-items-center justify-content-between my-4">
      <h1 class="h4 mb-0 text-gray-800">No tienes acceso </h1>
    </div>
  @endif
@endif


<?php 
  $alumnodatos = DB::table('alumno')
                  ->join('apoderado','apoderado.apod_id','alumno.alum_apod')
                  ->where('alumno.alum_dni','=',Auth::user()->usuario)->first();                          
?>
<!-- Home - Alumno -->
@if(Auth::user()->hasrole('alum'))
  @if($alumnodatos->alum_est == 1)
    <div class="card my-2">
      <div class="card-header py-2">
        <div class="d-sm-flex align-items-center justify-content-between my-1">
          <h1 class="h4 mb-0 text-gray-800">Bienvenido(a): {{$alumnodatos->alum_ape.', '.$alumnodatos->alum_nom}} </h1>
          <h2 class="h4 mb-0 text-gray-800">Grado: {{$alumnodatos->alum_grad.' ° de Secundaria'}}</h2>  
            <!-- inicio reloj -->
            <form name="form_reloj">
              <input type="text" name="reloj" size="10">
            </form>
            <!-- fin reloj -->            
        </div>
      </div>
    </div>
    
    <!-- tabla detalle alumno -->
    <div class="card-header py-3" >
      <h6 class="m-0 font-weight-bold">Datos básicos del alumno(a)</h6>
    </div>
    <table  class="table table-sm table-bordered" id="dataTable">
      <tr>
        <td>DNI</td>
        <td>{{$alumnodatos->alum_dni}}</td>
      </tr>
      <tr>
        <td>Apellidos</td>
        <td>{{$alumnodatos->alum_ape}}</td>
      </tr>
      <tr>
        <td>Nombres</td>
        <td>{{$alumnodatos->alum_nom}}</td>
      </tr>
      <tr>
        <td>Sexo</td>
        <td>
          @if ($alumnodatos->alum_sexo == 1)
              Masculino
          @else
              Femenino
          @endif
        </td>
      </tr>
      <tr>
        <td>Grado</td>
        <td>{{$alumnodatos->alum_grad}}° de secundaria</td>
      </tr>
      <tr>
        <td>Fecha de nacimiento</td>
        <td>{{date("d/m/Y", strtotime($alumnodatos->alum_fnac))}}</td>
      </tr>
      <tr>
        <td>E-mail de boleta</td>
        <td>{{$alumnodatos->apod_email}}</td>
      </tr>
      <tr>
        <td>Apoderado(a)</td>
        <td>{{$alumnodatos->apod_nom.' '.$alumnodatos->apod_ape}}</td>
      </tr>
    </table>
    <!-- fin tabla detalle alumno -->

    <!-- Inicio de imagen del 2020 -->
    <div align="center"><br>
      <a class="navbar-brand"  href="">
          <img  src="{{asset('img/anonuevo.png')}}" height="70px">
      </a>     
    </div> 
    <!-- fin de imagen 2020 -->

  @else
  <div class="d-sm-flex align-items-center justify-content-between my-4">
    <h1 class="h4 mb-0 text-gray-800">No tienes acceso</h1> 
  </div>
  @endif
@endif


@endsection

@section('scripts')
<script>
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
@endsection
