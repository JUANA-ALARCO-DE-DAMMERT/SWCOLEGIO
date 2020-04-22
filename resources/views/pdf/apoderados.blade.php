<p align="center"><strong>APODERADOS</strong></p> <br>
<table border="1">
		<thead>
			<tr>
				<th>DNI</th>
				<th>Apoderado</th>
				<th>E-mail</th>
				<th>Teléfono</th>			
			</tr>
		</thead>
		<tbody>
			@foreach($data as $a)
			<tr>
				<td class="text-sm-left">{{$a->apod_dni}}</td>
				<td class="text-sm-left">{{$a->apod_ape . ', ' . $a->apod_nom}}</td>
				<td class="text-sm-left">{{$a->apod_email}}</td>
				<td class="text-sm-left">{{$a->apod_tel}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>