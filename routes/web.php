<?php

Route::get('/', function () {
    return view('auth.login');
});

// Rutas del login
Auth::routes(['reset'=>false]);
Route::get('/home', 'HomeController@index')->name('home');

// Rutas de los controladores
Route::resource('apoderado','ApoderadoController');
Route::resource('alumno','AlumnoController');
Route::resource('docente','DocenteController');
Route::resource('curso','CursoController');
Route::resource('ac','AlumnoCursoController');
Route::resource('asistencia','AsistenciaController');

// Rutas del docente
Route::get('cursos/{id}','DocenteController@misCursos');

// Rutas del alumno
Route::get('miscursos/{id}','AlumnoController@misCursos');

// Rutas del curso
Route::get('matricula/{id}','CursoController@matricula');

// Rutas de asistencias
Route::get('asistencia/registrar/{id}','AsistenciaController@registrar');

// Rutas de recursos
Route::get('{idcurso}/recursos','RecursoController@listarBimestres');
Route::get('recursos/{idcurso}/{nbim}','RecursoController@showBimestre')->name('recursos.show');
Route::post('/upload', 'RecursoController@upload'); //Upload files
Route::post('/download','RecursoController@download'); //Download files

