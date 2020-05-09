<?php

Route::get('/', function () {
    return view('auth.login');
});

// Rutas del login
Auth::routes(['reset'=>false]);
Route::get('/home', 'HomeController@index')->name('home');

// Rutas de los controladores
Route::resource('administrador','AdministradorController');
Route::resource('apoderado','ApoderadoController');
Route::resource('alumno','AlumnoController');
Route::resource('docente','DocenteController');
Route::resource('secretaria','SecretariaController');
Route::resource('curso','CursoController');
Route::resource('ac','AlumnoCursoController');
Route::resource('asistencia','AsistenciaController');
Route::resource('notas','NotasController');
Route::resource('examen','ExamenLineaController');
Route::resource('pago','PagoController');
Route::resource('encuesta','EncuestaController');
Route::resource('video','VideoController');

// Rutas del docente
Route::get('cursos/{id}','DocenteController@misCursos');

// Rutas del alumno
Route::get('miscursos/{id}','AlumnoController@misCursos');
Route::get('mispagos/{id}','AlumnoController@misPagos');
Route::get('misreportes/{id}','AlumnoController@misReportes');

// Rutas del curso
Route::get('matricula/{id}','CursoController@matricula');

// Rutas de asistencias
Route::get('asistencia/registrar/{id}','AsistenciaController@registrar');

// Rutas de recursos
Route::get('{idcurso}/recursos','RecursoController@listarBimestres');
Route::get('recursos/{idcurso}/{nbim}','RecursoController@showBimestre')->name('recursos.show');
Route::post('/upload', 'RecursoController@upload'); //Upload files
Route::post('/download','RecursoController@download'); //Download files

// Rutas para notas
Route::get('{idcurso}/notas','NotasController@listarBimestres');
Route::get('notas/{idcurso}/{nbim}','NotasController@consultaNotas')->name('notas.show');
Route::get('notas/{idcurso}/{nbim}/edit','NotasController@editarNotas');
Route::get('registronotas/{idcurso}/{nbim}','NotasController@formNotas');
Route::get('misnotas/{id}','NotasController@misnotas');

// Rutas PDF's
Route::get('pdfalumnos','AlumnoController@descargarAlumnos');
Route::get('pdfapoderados','ApoderadoController@descargarApoderados');

// Rutas de exámenes
Route::get('newexamen/{idcurso}','ExamenLineaController@crear');
Route::get('exavirtual/{idcurso}','ExamenLineaController@listarExamenesPorCurso');

// Rutas de reportes
Route::get('reportepagopdf/','PagoController@descargarPDF');
Route::get('reportepagoexcel/','PagoController@descargarEXCEL');
Route::get('reportes/{idcurso}','ReportesController@listarReportes');
Route::get('reportes/{idcurso}/lastconection','ReportesController@ultimaConexion');
Route::get('reportes/{idcurso}/asistenciadocen','ReportesController@asistenciadocen');

// Rutas de pagos
Route::get('pagos/{id}','PagoController@resetPago');
Route::post('pagosupdate/','PagoController@actualizar');


