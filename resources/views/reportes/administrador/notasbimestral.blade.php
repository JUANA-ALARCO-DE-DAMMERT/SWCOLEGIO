
@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Reporte bimestral de notas</strong>
            </div>
            <div class="card-body">
            	<form method="post" action="{{url('recibirbimestres')}}" method="post">
					@method('POST')
					{{ csrf_field() }}
					<div class="form-group row">
                        <label class="col-md-2 col-form-label">N° Bimestre</label>
                        <div class="col-md-3">
                            <select name="nbim" class="form-control" onchange="val()" id="nbim" required>
                            	<option hidden>--- Seleccione ---</option>	
								<option value="1">1° Bimestre</option>
								<option value="2">2° Bimestre</option>
								<option value="3">3° Bimestre</option>
								<option value="4">4° Bimestre</option>
							</select>
                        </div>
                    </div> 
					<div class="form-actions">
                        <input type="submit" value="Generar Reporte" class="btn btn-primary">
                        <a href="{{url('home')}}" class="btn btn-danger">Cancelar</a>
                    </div> 
				</form>
            </div>
        </div>
    </div>
</div>


<div class="row">
  <div class="col-md-9">
    <div class="card text-center">
        <div class="card-header">Grafico de Notas Bimestrales
          <div class="card-header-actions">
            <a class="card-header-action" href="http://www.chartjs.org" target="_blank">
            </a>
          </div>
        </div>
        <div class="card-body">
          <div class="chart-wrapper">
            <canvas id="graficoasistenciatotal"></canvas>
          </div>
        </div>
    </div>  
  </div>
</div>


@endsection

@section('scripts')

<script src="{{asset('plantilla/node_modules/popper.js/dist/umd/popper.min.js')}}"></script>
<script src="{{asset('plantilla/node_modules/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('plantilla/node_modules/pace-progress/pace.min.js')}}"></script>
<script src="{{asset('plantilla/node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js')}}"></script>
<script src="{{asset('plantilla/node_modules/chart.js/dist/Chart.min.js')}}"></script>
<script src="{{asset('plantilla/node_modules/@coreui/coreui-plugin-chartjs-custom-tooltips/dist/js/custom-tooltips.min.js')}}"></script>
<script src="{{asset('plantilla/js/charts.js')}}"></script>




<script type="text/javascript">
    function val() {
        d = document.getElementById("nbim").value;
        alert(d);
    }  






<?php 
$aa_arte1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','5')->count(); 
$aa_cyt1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','4')->count(); 
$aa_cc1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','3')->count();
$aa_com1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','2')->count();
$aa_ef1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','6')->count();
$aa_in1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','7')->count();
$aa_mat1 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','1')->where('curso.curs_idasig','=','1')->count();
$fechas = DB::table('asignatura')->orderBy('asig_nom')->where('asig_id','!=','8')->get();

?>

<?php 
$aa_arte2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','5')->count(); 
$aa_cyt2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','4')->count(); 
$aa_cc2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','3')->count();
$aa_com2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','2')->count();
$aa_ef2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','6')->count();
$aa_in2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','7')->count();
$aa_mat2 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','2')->where('curso.curs_idasig','=','1')->count();


?>

<?php 
$aa_arte3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','5')->count(); 
$aa_cyt3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','4')->count(); 
$aa_cc3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','3')->count();
$aa_com3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','2')->count();
$aa_ef3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','6')->count();
$aa_in3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','7')->count();
$aa_mat3 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','3')->where('curso.curs_idasig','=','1')->count();


?>

<?php 
$aa_arte4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','5')->count(); 
$aa_cyt4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','4')->count(); 
$aa_cc4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','3')->count();
$aa_com4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','2')->count();
$aa_ef4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','6')->count();
$aa_in4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','7')->count();
$aa_mat4 = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=','4')->where('curso.curs_idasig','=','1')->count();


?>

var lineChart = new Chart($('#graficoasistenciatotal'), {
  type: 'line',
  data: {
    labels: [
    <?php 
          foreach ($fechas as  $fecha) { ?>
            '<?php echo $fecha->asig_nom; ?>',
          <?php } ?>
            ],
    datasets: [{
      label: 'Bimestre I',

      borderColor: '#FF6384',
      pointBackgroundColor: '#FF6384',
      pointBorderColor: '#FF6384',
      data: [({{$aa_arte1}}),({{$aa_cyt1}}),({{$aa_cc1}}),({{$aa_com1}}),({{$aa_ef1}}),({{$aa_in1}}),({{$aa_mat1}})]
    }, {
      label: 'Bimestre II',

      borderColor: '#77DD77',
      pointBackgroundColor: '#77DD77',
      pointBorderColor: '#77DD77',
      data: [({{$aa_arte2}}),({{$aa_cyt2}}),({{$aa_cc2}}),({{$aa_com2}}),({{$aa_ef2}}),({{$aa_in2}}),({{$aa_mat2}})]
    },{
      label: 'Bimestre III',

      borderColor: '#FFCE56',
      pointBackgroundColor: '#FFCE56',
      pointBorderColor: '#FFCE56',
      data: [({{$aa_arte3}}),({{$aa_cyt3}}),({{$aa_cc3}}),({{$aa_com3}}),({{$aa_ef3}}),({{$aa_in3}}),({{$aa_mat3}})]
    },{
      label: 'Bimestre IV',

      borderColor: '#36A2EB',
      pointBackgroundColor: '#36A2EB',
      pointBorderColor: '#36A2EB',
      data: [({{$aa_arte3}}),({{$aa_cyt3}}),({{$aa_cc3}}),({{$aa_com3}}),({{$aa_ef3}}),({{$aa_in3}}),({{$aa_mat3}})]
    }]
  },

  options: {
    scales: {
      xAxes: [{
        ticks: {
          beginAtZero: true,
                   max: 100,
                   stepSize: 0,
                   fontSize: 10
        }
      }],
      yAxes: [{
        ticks: {
          beginAtZero: true,
                   max: 100,
                   stepSize: 0,
                   fontSize: 11
        }
      }],
    }
  }


  // options: {
  //   scales: {
  //          xAxes: [{
  //              ticks: {
  //                  beginAtZero: true,
  //                  max: 100,
  //                  stepSize: 0,
  //                  fontSize: 8,
  //                  maxRotation: 90,
  //                  minRotation: 90
  //              }
  //          }],

  //      }
    
  // },

}); // eslint-disable-next-line no-unused-vars
</script>


@endsection