@extends('plantilla.plantilla')
@section('contenido')
           
<div>
  <div><br>
    <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="card-columns cols-2">

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



<script type="text/javascript">
    function val() {
        d = document.getElementById("nbim").value;
        alert(d);
    }  





<?php 

$fechas = DB::table('asistencia')
            ->select(DB::raw('count(asis_id) AS aa'),'asis_fecha')
            ->whereBetween('asis_fecha',[$finicio,$ffin])
            ->groupBy('asis_fecha')
            ->orderBy('asis_fecha','asc')
            ->get();

$data = DB::table('asistencia')
            ->select(DB::raw('count(asistencia.asis_id) AS aa'),'asis_fecha')
            ->join('curso','curso.curs_id','asistencia.asis_idcurso')
            ->join('asignatura','asignatura.asig_id','curso.curs_idasig')
            ->where('asistencia.asis_est','=','0')
            ->where('asignatura.asig_id','=',$asig)
            ->whereBetween('asis_fecha',[$finicio,$ffin])
            ->groupBy('asis_fecha')
            ->orderBy('asis_fecha','asc')
            ->get();

?>


  var lineChart = new Chart($('#graficoasistenciatotal'), {
    type: 'line',
    data: {
      labels: [
          <?php 
          foreach ($fechas as  $fecha) { ?>
            '<?php echo $fecha->asis_fecha; ?>',
            <?php } ?>  
      ],
      datasets: [{
        label: 'Notas',
        backgroundColor: 'rgba(123, 159, 255 , 0.2)',
        borderColor: 'rgba(123, 159, 255 , 1)',
        pointBackgroundColor: 'rgba(123, 159, 255  , 1)',
        pointBorderColor: 'rgba(123, 159, 255 , 1)',
        data: [
          <?php 
          foreach ($data as  $d) { ?>
            '<?php echo $d->aa/50*100; ?>',
            <?php } ?> 
        ]
      }, 
      ]
    },
    options: {
    scales: {
      xAxes: [{
        ticks: {
          beginAtZero: true,
                   max: 100,
                   stepSize: 0,
                   fontSize: 10,
                   maxRotation: 90,
                   minRotation: 90
        }
      }],
      yAxes: [{
        ticks: {
          beginAtZero: true,
                   max: 100,
                   stepSize: 25,
                   fontSize: 11,
                   callback: function(value){return value+ "%"}

        }
      }],
    }
  }



  }); // eslint-disable-next-line no-unused-vars
</script>
@endsection