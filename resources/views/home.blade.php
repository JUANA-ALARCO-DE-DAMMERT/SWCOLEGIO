<?php 
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
          <div class="text-value">385</div>
          <small class="text-muted text-uppercase font-weight-bold">1° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
        </div>
      </div>
      <!-- 2° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">385</div>
          <small class="text-muted text-uppercase font-weight-bold">2° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
        </div>
      </div>
      <!-- 3° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">385</div>
          <small class="text-muted text-uppercase font-weight-bold">3° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
        </div>
      </div>
      <!-- 4° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">385</div>
          <small class="text-muted text-uppercase font-weight-bold">4° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
        </div>
      </div>
      <!-- 5° de secundaria -->
      <div class="card">
        <div class="card-body">
          <div class="h1 text-muted text-right mb-4">
            <i class="icon-people"></i>
          </div>
          <div class="text-value">385</div>
          <small class="text-muted text-uppercase font-weight-bold">5° de secundaria</small>
          <div class="progress progress-xs mt-3 mb-0">
            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
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



<?php 
  $alumnodatos = DB::table('alumno')
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


  @else
  <div class="d-sm-flex align-items-center justify-content-between my-4">
    <h1 class="h4 mb-0 text-gray-800">No tienes acceso</h1> 
  </div>
  @endif
@endif

@endsection

<!--inicio Script para el reloj -->
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
<!-- Fin Script para el reloj -->