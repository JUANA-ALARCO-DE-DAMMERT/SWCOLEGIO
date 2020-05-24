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
			<td>
				@if ($a->alum_grad <= 6)
                                    {{$a->alum_grad . '° de primaria'}}
                                @elseif($a->alum_grad == 7)
                                    {{'1° de secundaria'}}
                                @elseif($a->alum_grad == 8)
                                    {{'2° de secundaria'}}          
                                @elseif($a->alum_grad == 9)
                                    {{'3° de secundaria'}}  
                                @elseif($a->alum_grad == 10)
                                    {{'4° de secundaria'}}  
                                @elseif($a->alum_grad == 11)
                                    {{'5° de secundaria'}}  
                                @else
                                    {{'Egresado'}}  
                                @endif
			</td>
			<td>{{$a->apod_ape . ', ' . $a->apod_nom}}</td>
		</tr>
		@endforeach
	</tbody>
</table>
<p>1° de primaria: {{$n1alumnos}}<br> 
 	   2° de primaria: {{$n2alumnos}}<br>
 	   3° de primaria: {{$n3alumnos}}<br>
 	   4° de primaria: {{$n4alumnos}}<br>
 	   5° de primaria: {{$n5alumnos}}<br>
 	   6° de primaria: {{$n6alumnos}}<br>
 	   1° de secundaria: {{$n7alumnos}}<br>
 	   2° de secundaria: {{$n8alumnos}}<br>
 	   3° de secundaria: {{$n9alumnos}}<br>
 	   4° de secundaria: {{$n10alumnos}}<br>
 	   5° de secundaria: {{$n11alumnos}}<br>
<p>Total: {{$totalalum}}</p>