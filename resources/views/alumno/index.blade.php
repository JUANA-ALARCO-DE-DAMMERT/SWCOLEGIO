<!DOCTYPE html>
<html>
<head>
    <title>Alumno </title>
    <meta http-equiv="refresh" content="5">
</head>
<body>

</body>
</html>
@extends('plantilla.plantilla')
@section('contenido')
<div class="mb-4">
    <div class="row">
        <div class="col-xl-6">
            <a href="{{url('alumno/create')}}" class="btn btn-primary">Registrar Alumnos</a>
        </div>
        <div class="col-xl-6">
            @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
            @endif
        </div>
    </div>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Alumnos Registrados</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-responsive-sm table-bordered table-striped table-sm" id="dataTable" width="100%" cellspacing="0">
                <thead>
                            <th>DNI</th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th>Sexo</th>
                            <th>Grado</th>
                            <th>Estado</th>
                            <th>Opciones</th>
                </thead>
                <tbody>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><span class="badge badge-success"></span></td>
                            <td>
                               <a class="btn btn-sm btn-info"><i class="fa fa-search"></i></a>         
                               <a class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>         
                               <a class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                               <a class="btn btn-sm "><i class="fa fa-file-pdf-o"></i></a>         
                            </td>
                </tbody>
            </table>
        </div>
    </div>
</div>
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Total de alumnos por Año</h6>
    </div>
<!-- TOTAL DE ESTUDIANTES POR CADA AÑO -->
<div class="row">
    <!-- 1ero de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">1ro secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 90%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 2do de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">2do secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 3ero de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">3ro secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 4to de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">4to secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
    <!-- 5to de secundaria total -->
              <div class="col-sm-6 col-md-2">
                <div class="card">
                  <div class="card-body">
                    <div class="h1 text-muted text-right mb-4">
                      <i class="icon-people"></i>
                    </div>
                    <div class="text-value">9999</div>
                    <small class="text-muted text-uppercase font-weight-bold">5to secundaria</small>
                    <div class="progress progress-xs mt-3 mb-0">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
<!-- Fin -->
</div>
@endsection