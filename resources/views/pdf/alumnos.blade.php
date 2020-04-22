<p align="center"><strong>ALUMNOS</strong></p> <br>
<table border="1">
	<thead>
		<tr>
			<th>DNI</th>
			<th>Alumno</th>
			<th>Sexo</th>
			<th>F. Nacimiento</th>
			<th>Grado</th>	
			<th>Apoderado</th>			
		</tr>
	</thead>
	<tbody>
		@foreach($data as $a)
		<tr>
			<td>{{$a->alum_dni}}</td>
			<td>{{$a->alum_ape . ', ' . $a->alum_nom}}</td>
			@if($a->alum_sexo == 1)
                   <td>Masculino</td>
               @elseif($a->alum_sexo == 0)
                   <td>Femenino</td>
               @endif
               <td>{{date("d/m/Y", strtotime($a->alum_fnac))}}</td>
			<td>{{$a->alum_grad}}° de secundaria</td>
			<td>{{$a->apod_ape . ', ' . $a->apod_nom}}</td>
		</tr>
		@endforeach
	</tbody>
</table>
<p>1° de secunnaria: {{$n1alumnos}}<br> 
 	   2° de secundaria: {{$n2alumnos}}<br>
 	   3° de secundaria: {{$n3alumnos}}<br>
 	   4° de secundaria: {{$n4alumnos}}<br>
 	   5° de secundaria: {{$n5alumnos}}</p>
<p>Total: {{$totalalum}}</p>