@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Reporte mensual de asistencias</strong>
            </div>
            <div class="card-body">
            	<form method="post" action="{{url('recebirreporteasismensual')}}" id="elForm">
					@method('POST')
					{{ csrf_field() }}
					<div class="form-group row">
                        <label class="col-md-1 col-form-label">F. Inicio</label>
                        <div class="col-md-3">
                            <input class="form-control" type="date" name="finicio" id="infechaini" onChange="sinDomingos();" onblur="obtenerfechafinf1();" required >
                        </div>
                        <label class="col-md-1 col-form-label">F. Fin</label>
                        <div class="col-md-3">
                            <input class="form-control" type="date" name="ffin"  >
                        </div>
                    </div> 
                    <div class="form-group row">
                    	<label class="col-md-1 col-form-label">Curso</label>
                        <div class="col-md-3" >
                            <select name="idasig" class="form-control">
								<option hidden>---Seleccione---</option>
								<option value="1">Matemáticas</option>
								<option value="2">Comunicación</option>
							</select>
                        </div>
                    </div>
					<div class="form-actions">
                        <input type="submit" value="Generar Reporte" id="elSubmit" class="btn btn-primary">
                        <a href="{{url('home')}}" class="btn btn-danger">Cancelar</a>
                    </div> 
				</form>
            </div>
        </div>
    </div>
</div>


<div class="card">
 <div class="card-header">Grafico de Asistencias de alumnos
   <div class="card-header-actions">
     <a class="card-header-action" href="http://www.chartjs.org" target="_blank">
       <small class="text-muted">docs</small>
      </a>
    </div>
  </div>
  <div class="card-body">
    <div class="chart-wrapper">
      <canvas id="graficoasistenciatotal"></canvas>
    </div>
  </div>
</div> 



@endsection

@section('scripts')
<script type="text/javascript">
    
var elDate = document.getElementById('infechaini');
var elForm = document.getElementById('elForm');
var elSubmit = document.getElementById('elSubmit');

function sinDomingos(){
    var day = new Date(elDate.value ).getUTCDay();
    // Días 0-6, 0 es Domingo 6 es Sábado
    elDate.setCustomValidity(''); // limpiarlo para evitar pisar el fecha inválida
    if( day == 0 || day == 6 ){
       elDate.setCustomValidity('por favor seleccione otro día de Lunes a Viernes');
    } else {
       elDate.setCustomValidity('');
    }
    if(!elForm.checkValidity()) {elSubmit.click()};
}

function obtenerfechafinf1(){
    sinDomingos();
}

</script>

<script src="{{asset('plantilla/node_modules/popper.js/dist/umd/popper.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/pace-progress/pace.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js')}}"></script>
<!--     <script src="{{asset('plantilla/node_modules/@coreui/coreui/dist/js/coreui.min.js')}}"></script>
 -->    <!-- Plugins and scripts required by this view-->
    <script src="{{asset('plantilla/node_modules/chart.js/dist/Chart.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/@coreui/coreui-plugin-chartjs-custom-tooltips/dist/js/custom-tooltips.min.js')}}"></script>
    <script src="{{asset('plantilla/js/charts.js')}}"></script>

<?php $fechas = DB::table('asistencia')
                    ->distinct('asis_fecha')
                    ->get(); ?>

<script type="text/javascript">
  var lineChart = new Chart($('#graficoasistenciatotal'), {
  type: 'line',
  data: {
    labels: [<?php foreach ($fechas as $f) { ?>
        <?php  echo $f->asis_idcurso; ?> ,
    <?php } ?> ],
    datasets: [{
      label: 'Asistencias',
      backgroundColor: 'rgba(220, 220, 220, 0.2)',
      borderColor: 'rgba(220, 220, 220, 1)',
      pointBackgroundColor: 'rgba(220, 220, 220, 1)',
      pointBorderColor: '#fff',
      data: []
    }, 
    ]
  },
  options: {
    responsive: true
  }
}); // eslint-disable-next-line no-unused-vars
</script>


@endsection