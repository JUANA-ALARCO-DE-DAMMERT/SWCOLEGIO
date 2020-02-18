@extends('plantilla.plantilla')
@section('contenido')

<div class="row">
    <div class="col-lg-12">
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#estudiante" role="tab" aria-controls="estudiante">Estudiante</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#apoderado" role="tab" aria-controls="apoderado">Apoderado</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="estudiante" role="tabpanel">
                <form action="" method="" class="form-horizontal">
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">DNI</label>
                        <div class="col-md-2">
                            <input class="form-control" id="" type="text" name="" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="" type="text" name="" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="text" name="" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                        <div class="col-md-3">
                            <select class="form-control" id="">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="1">Masculino</option>
                                <option value="0">Femenino</option>
                            </select>
                        </div>
                        <label class="col-md-2 col-form-label">Fecha de Nacimiento</label>
                        <div class="col-md-2">
                            <input type="date" class="form-control">
                        </div>
                        <label class="col-md-1 col-form-label">Grado</label>
                        <div class="col-md-3">
                            <select class="form-control" id="">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="">1° de secundaria</option>
                                <option value="">2° de secundaria</option>
                                <option value="">3° de secundaria</option>
                                <option value="">4° de secundaria</option>
                                <option value="">5° de secundaria</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-actions">
                        <input type="submit" value="Registrar" class="btn btn-primary">
                        <a href="" class="btn btn-danger">Cancelar</a>
                    </div>
                </form>
            </div>
            <div class="tab-pane active" id="apoderado" role="tabpanel">
            
            </div>
    </div>
</div>

@endsection