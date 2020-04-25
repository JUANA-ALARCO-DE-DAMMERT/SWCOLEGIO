<p align="center"><strong>Reporte: Última Conexión</strong></p> <br>
<div text-align="center">
	<table border="1" text-align="center">
		<thead>
			<tr>
				<th>DNI</th>
				<th>Alumno</th>
				<th>Última conexión</th>
			</tr>
		</thead>
		<tbody>
			@foreach($data as $a)
			<tr>
				<td>{{$a->alum_dni}}</td>
				<td>{{$a->alum_ape . ', ' . $a->alum_nom}}</td>
				<td>{{$a->last_login}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</div>