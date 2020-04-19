@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
	<div class="col-lg-12">
		<div class="card">
            <div class="card-header">
                <strong>Modificar Docente</strong>
            </div>
            <div class="card-body">
            	<form action="{{url('docente/'.$doc->trab_id)}}" method="POST" class="form-horizontal">
					<div class="form-group row">
                        <label class="col-md-1 col-form-label">DNI</label>
                        <div class="col-md-2">
                            <input class="form-control" type="text" name="trab_dni" value="{{$doc->trab_dni}}" readonly required>
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" type="text" name="trab_ape" value="{{$doc->trab_ape}}" readonly required>
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" type="text" name="trab_nom" value="{{$doc->trab_nom}}" readonly required>
                        </div>
                    </div>
            	</form>
            </div>			
		</div>
		
	</div>
	
</div>
@endsection