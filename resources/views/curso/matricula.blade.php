@extends('plantilla.plantilla')
@section('contenido')
<form action="{{url('ac')}}" method="POST" >
@method('POST')
{{ csrf_field() }}
    <div class="row mt-4">
        <div class="col-md-6">
            <input type="submit" value="Matricular estudiantes" class="btn btn-primary">
        </div>
        <div class="col-md-6">
            <input type="hidden" value="{{$curso->curs_id}}" name="curs_id">
        </div>
    </div>
    <div class="card my-3">
        <div class="card-body">
            <table class="table table-responsive-sm table-hover table-sm">
                <thead>
                    <tr>
                        <th><input type="checkbox" onclick="marcar(this);"></th>
                        <th>Alumno</th>
                        <th>Grado</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($alumnos as $a)
                    <tr>
                        <td><input type="checkbox" value="{{$a->alum_id}}" name="alumnos[]"></td>
                        <td>{{$a->alum_ape . ', '. $a->alum_nom}}</td>
                        <td>{{$a->alum_grad . '° de secundaria'}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</form>
@endsection

@section('scripts')
<script type="text/javascript">
	function marcar(source) 
	{
		checkboxes=document.getElementsByTagName('input'); //obtenemos todos los controles del tipo Input
		for(i=0;i<checkboxes.length;i++) //recoremos todos los controles
		{
			if(checkboxes[i].type == "checkbox") //solo si es un checkbox entramos
			{
				checkboxes[i].checked=source.checked; //si es un checkbox le damos el valor del checkbox que lo llamó (Marcar/Desmarcar Todos)
			}
		}
	}
</script>
@endsection