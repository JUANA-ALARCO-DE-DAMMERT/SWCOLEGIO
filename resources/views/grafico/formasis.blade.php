<form action="{{url('datagrafico')}}" method="post">
	@method('POST')
	{{ csrf_field() }}
	<label>F. Inicio</label>
	<input type="date" name="finicio">
	<label>F. Fin</label>	
	<input type="date" name="ffin">
	<label>Asignatura</label>
	<select name="asig" >
		<option value="1">Matemáticas</option>
		<option value="2">Comunicación</option>
	</select>
	<input type="submit" value="Registrar">
</form>