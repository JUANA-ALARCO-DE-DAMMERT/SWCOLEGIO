
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



<?php $nbim = "1";

?>


<?php 
$aa_arte = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','5')->count(); 
$aa_cyt = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','4')->count(); 
$aa_cc = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','3')->count();
$aa_com = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','2')->count();
$aa_ef = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','6')->count();
$aa_in = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','7')->count();
$aa_mat = DB::table('notas')->join('curso','curso.curs_id','not_idcurso')->where('not_promedio','>=','12')
                ->where('not_bimestre','=',$nbim)->where('curso.curs_idasig','=','1')->count();
$fechas = DB::table('asignatura')->orderBy('asig_nom')->where('asig_id','!=','8')->get();

?>


  var lineChart = new Chart($('#graficoasistenciatotal'), {
    type: 'bar',
    data: {
      labels: [
        <?php 
          foreach ($fechas as  $fecha) { ?>
            '<?php echo $fecha->asig_nom; ?>',
            <?php } ?> ,''    
      ],
      datasets: [{
        label: 'Notas',
        backgroundColor: 'rgba(220, 220, 220)',
        borderColor: 'rgba(220, 220, 220)',
        pointBackgroundColor: 'rgba(220, 220, 220)',
        pointBorderColor: '#fff',
        data: [
                <?php echo $aa_arte/50*100; ?>,
                <?php echo $aa_cyt/50*100; ?>,
                <?php echo $aa_cc/50*100; ?>,
                <?php echo $aa_com/50*100; ?>,
                <?php echo $aa_ef/50*100; ?>,
                <?php echo $aa_in/50*100; ?>,
                <?php echo $aa_mat/50*100; ?>,0
          ]
      }, 
      ]
    },
    options: {
      responsive: true
    }
  }); // eslint-disable-next-line no-unused-vars
</script>


@endsection