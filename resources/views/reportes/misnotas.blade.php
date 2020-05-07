<!DOCTYPE html>
<html>
<head>
	<title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="header-wrapper">
      <div >
        <img src="{{asset('img/logo-jad.jpeg')}}" width="40" height="40"> 
      </div>
      </div>

      <div>
      	<h5>
      	<center>
      		I.E.P. “JUANA ALARCO DE DAMMERT”
      	</center>
            </h5>
      	<p><center>
      			.- Un buen colegio al alcance de usted -. <br> SAN MIGUEL- R.D.Z. Nº 06390-1977
      	</center>
      </p>
      <h5>
      	<center>
      		INFORME ANUAL DE LOGROS DEL EDUCANDO <br> Valor Institucional: LA RESPONSABILIDAD <br> AÑO ESCOLAR - 2020 <br><a style="text-decoration: underline;"> NIVEL: PRIMARIA</a> 
      	</center>
      </h5>
      </div>

      <div>
      	Sr. Padre de Familia: <br> <b>ALUMNO(A): {{$alumno->alum_ape . ', ' . $alumno->alum_nom}} Gdo: {{$alumno->alum_grad.' Grado '}}                      Nivel:________ </b>
      </div>
      <table class="table table-hover table-bordered table-sm" id="dataTable" width="60%" cellspacing="0">
      	<thead>
	      	<tr>
	      		<th>  </th>
	      		<th><center>ÁREAS</center></th>
	      		<th><center>    I		<br>    B1		</center></th>
	      		<th><center>    II 	<br>    B1		</center></th>
	      		<th><center>    III	<br>    B1		</center></th>
	      		<th><center>    IV	<br>    B1		</center></th>
	      		<th><center>   Nota	<br>    Anu.	</center></th>
	      		<th><center>   Requ	<br>   Recu.	</center></th>
	      	</tr>
      	</thead>
      	<tbody>
				@foreach($cursos as $c)
				<tr>
					<td>{{$c->asig_id}}</td>
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
					<td></td>
					<td></td>
				</tr>
				@endforeach

      	</tbody>
      </table>
      <p>Alumno(a) - Padres de Familia</p>
      <table class="table table-hover table-bordered table-sm" id="dataTable" width="60%" cellspacing="0">
            <thead>
                  <tr>
                        <th><center>a</center></th>
                        <th>Alno, Tardanzas.- Faltas - Suspensiones T=</th>
                        <th><center>F= </center></th>
                        <th><center>S= </center></th>
                  </tr>
            </thead>
            <tbody>
                  <tr>
                        <td><center>b</center></td>
                        <td>Padre de F.- Apoya plan lector.</td>
                        <td><center>Si</center></td>
                        <td><center>No</center></td>
                  </tr>
                  <tr>
                        <td><center>c</center></td>
                        <td>Padre de F.- Firma la agenda - Comunicados.</td>
                        <td><center>Si</center></td>
                        <td><center>No</center></td>
                  </tr>
                  <tr>
                        <td><center>d</center></td>
                        <td>Padre de F.- Responsable en sus compromisos con el colegio.</td>
                        <td><center>Si</center></td>
                        <td><center>No</center></td>
                  </tr>
                  <tr>
                        <td><center>e</center></td>
                        <td>Padre de F. - Asiste a la reuniones.</td>
                        <td><center>Si</center></td>
                        <td><center>No</center></td>
                  </tr>
                  <tr>
                        <td colspan="3" >Los Promedios = a 12 ó -s RR= REQUIEREN REFORZA.</td>
                  </tr>
            </tbody>
      </table>

                  <p>**Felicitamos a los Padres de Familia por su dedicacion en la Educacion a sus menores hijos.</p>
                  <p>*La mayor herencia que puede dejar un Padre a sus hijos, es el ejemplo de sus virtudes y de sus bellas acciones.</p>
                  <p><center>Sr. Padre de F. Si tiene alguna inquietud, no dude en acercarse a ala Direccion.</center></p><br>
      <table border="0">
            <tr>
                  <th><center>__________________________ <br> Prof.Tutor(a)</center></th>
                  <th><center>__________________________ <br> Padre de Familia</center></th>
                  <th><center>__________________________ <br> Vº.Bº Direccion</center></th>
            </tr>
      </table>




