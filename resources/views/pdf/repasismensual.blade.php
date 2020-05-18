<table border="1" >
	<thead>
		<tr>
			<th>Fecha</th>
			<th>Alumnos Asistentes</th>
			<th>Total de Alumnos</th>
			<th>Fórmula</th>
			<th>AA*0.90</th>
			<th>TA*0.90</th>
			<th>Porcentaje</th>
		</tr>
	</thead>
		<tbody>
		{{$acumulador = 0}}
		@foreach($data as $q)
			<tr>
				<td>{{$q->asis_fecha}}</td>
				<td>{{$q->aa}}</td>
				<td>50</td>
				<td>{{$q->aa / 50 * 100}}.00</td>
				<td>{{$q->aa * 0.90}}</td>
				<td>{{50 * 0.90}}</td>
				<td>{{$q->aa / 50 * 100}}% </td>
			</tr>
			{{$acumulador = $acumulador + ($q->aa / 50 * 100)}}
		@endforeach
		<tr>
			<td colspan="6"></td>
			<td>{{$acumulador / $contador}} %</td>
		</tr>
	</tbody>
</table>