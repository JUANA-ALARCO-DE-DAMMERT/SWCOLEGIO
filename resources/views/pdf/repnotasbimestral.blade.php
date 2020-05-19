<table border="1" >
	<thead>
		<tr>
			<th>Cursos</th>
			<th>Alumnos Aprobados</th>
			<th>Total de Alumnos</th>
			<th>Fórmula</th>
			<th>AAP*0.90</th>
			<th>TA*0.90</th>
			<th>Porcentaje</th>
		</tr>
	</thead>
		<tbody>
		{{$acumulador = 0}}
		@foreach($data as $q)
			<tr>
				<td>{{$q->asig_nom}}</td>
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
			<td><?php echo round($acumulador / 7, 2); ?>%</td>
		</tr>
	</tbody>
</table>