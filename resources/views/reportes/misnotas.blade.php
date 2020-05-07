{{$alumno->alum_ape . ', ' . $alumno->alum_nom}}
<br><br>
<table>
	<thead>
		<th>Curso</th>
		<th>B1</th>
		<th>B2</th>
		<th>B3</th>
		<th>B4</th>
	</thead>
	<tbody>
		@foreach($cursos as $c)
		<tr>
			<td>{{$c->asig_nom}}</td>
			<?php
				$query = DB::table('notas')
						->where('notas.not_idcurso','=',$c->curs_id)
						->where('notas.not_idalumno','=',$alumno->alum_id)
						->get();
			?>
			@foreach($query as $q)
				<td>{{$q->not_promedio}}</td>
			@endforeach
		</tr>
		@endforeach
	</tbody>
</table>

