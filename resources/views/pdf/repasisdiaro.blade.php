<table>
	<thead>
		<tr>
			<th>DNI</th>
			<th>Alumno</th>
			<th>Estado</th>
		</tr>
	</thead>
		<tbody>
		@foreach($data as $q)
			<tr>
				<td>{{$q->alum_dni}}</td>
				<td>{{$q->alum_ape}}</td>
				<td>{{$q->asis_est}}</td>
			</tr>
		@endforeach
	</tbody>
</table>



<!-- <table>
	<thead>
		<th>DNI</th>
		<th>Alumno</th>
		<th>Estado</th>
	</thead>
	<tbody>
		@foreach($data as $q)
			<tr>
				<td>{{$q->alum_dni}}</td>
				<td>{{$q->alum_ape}}</td>
				<td>{{$q->asis_est}}</td>
			</tr>
		@endforeach
	</tbody>
</table> -->