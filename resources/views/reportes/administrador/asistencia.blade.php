@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Reporte diario de asistencias</strong>
            </div>
            <div class="card-body">
            	<form method="post" action="{{url('recebirreporteasis')}}">
					@method('POST')
					{{ csrf_field() }}
					<div class="form-group row">
                        <label class="col-md-1 col-form-label">Fecha</label>
                        <div class="col-md-3">
                            <input class="form-control" required type="date" name="asis_fecha" >
                        </div>
                        <label class="col-md-1 col-form-label">Curso</label>
                        <div class="col-md-3">
                            <select name="curs_idasig" class="form-control">
								<option hidden>---Seleccione---</option>
								<option value="1">Matemáticas</option>
								<option value="2">Comunicación</option>
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
@endsection
