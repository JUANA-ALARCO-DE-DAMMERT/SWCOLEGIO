<p align="center"><strong>PAGOS 2020</strong></p> <br>
<table border="1">
	<thead>
		<tr>
			<th>DNI</th>
			<th>Alumno</th>
			<th>M. Anual</th>
			<th>Dscto.</th>
			<th>M. Inicial</th>	
			<th>Marzo</th>		
            <th>Abril</th>
            <th>Mayo</th>
            <th>Junio</th>
            <th>Julio</th>
            <th>Agosto</th>
            <th>Setiembre</th>
            <th>Octubre</th>
            <th>Noviembre</th>
            <th>Diciembre</th>	
		</tr>
	</thead>
	<tbody>
		@foreach($data as $a)
		<tr>
			<td><small>{{$a->alum_dni}}</small></td>
			<td><small>{{$a->alum_ape . ', ' . $a->alum_nom}}</small></td>
			<td><small>{{'s/'.$a->montoanual}}</small></td>
            <td><small>{{'s/'.$a->descuento}}</small></td>
            <td><small>{{'s/'.$a->inicial}}</small></td>
            <td><small>{{'s/'.$a->marzo}}</small></td>
            <td><small>{{'s/'.$a->abril}}</small></td>
            <td><small>{{'s/'.$a->mayo}}</small></td>
            <td><small>{{'s/'.$a->junio}}</small></td>
            <td><small>{{'s/'.$a->julio}}</small></td>
            <td><small>{{'s/'.$a->agosto}}</small></td>
            <td><small>{{'s/'.$a->setiembre}}</small></td>
            <td><small>{{'s/'.$a->octubre}}</small></td>
            <td><small>{{'s/'.$a->noviembre}}</small></td>
            <td><small>{{'s/'.$a->diciembre}}</small></td>
		</tr>
		@endforeach
	</tbody>
</table>