@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6">
        <a href="{{url('docente/create')}}" class="btn btn-primary">Registrar docente</a>
    </div>
    <div class="col-md-6">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
</div>
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Docentes</strong>
            </div>
            <div class="card-body">
                <table class="table table-responsive-sm table-hover table-sm" id="dataTable">
                    <thead>
                        <tr>
                            <th>DNI</th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th>Sexo</th>
                            <th>F. Nacimiento</th>
                            <th>Estado</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($docentes as $doc)
                        <tr>
                            <td>{{$doc->trab_dni}}</td>
                            <td>{{$doc->trab_ape}}</td>
                            <td>{{$doc->trab_nom}}</td>
                            <td>
                                @if ($doc->trab_sexo == 1)
                                    Masculino
                                @else
                                    Femenino
                                @endif
                            </td>
                            <td>{{date("d/m/Y", strtotime($doc->trab_fnac))}}</td>
                            <td>
                              @if ($doc->trab_est === 1)
                                <span class="badge badge-success">Activo</span>
                              @else
                              <span class="badge badge-danger">Inactivo</span>
                              @endif
                            </td>
                            <td>
                               <a href="{{url('docente/'.$doc->trab_id.'/edit')}}" class="btn btn-sm btn-warning" title="Editar Datos del Docente"><i class="fa fa-pencil"></i></a>                                
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
    
@endsection