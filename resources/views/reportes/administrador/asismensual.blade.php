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
@endsection