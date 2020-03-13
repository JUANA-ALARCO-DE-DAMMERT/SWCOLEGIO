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
            		
            	</form>
            	
            </div>			
		</div>
		
	</div>
	
</div>
@endsection